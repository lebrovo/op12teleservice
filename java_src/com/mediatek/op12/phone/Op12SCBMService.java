package com.mediatek.op12.phone;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.CountDownTimer;
import android.os.IBinder;
import android.util.Log;
import java.text.SimpleDateFormat;

public class Op12SCBMService extends Service {
    private static String CHANNEL_ID = "scbm_channel";
    private static final int DEFAULT_SCM_EXIT_TIMER_VALUE = 300000;
    private static final String LOG_TAG = "Op12SCBMService";
    private final IBinder mBinder = new LocalBinder();
    private boolean mInEmergencySMS = false;
    private NotificationManager mNotificationManager = null;
    private BroadcastReceiver mScmReceiver = new BroadcastReceiver() {
        /* class com.mediatek.op12.phone.Op12SCBMService.AnonymousClass1 */

        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.mediatek.intent.action.ACTION_SCBM_CHANGED") && !intent.getBooleanExtra("phoneinSCMState", false)) {
                Log.d(Op12SCBMService.LOG_TAG, "ACTION_SCBM_CHANGED false");
                Op12SCBMService.this.stopSelf();
            }
        }
    };
    private long mTimeLeft = 0;
    private CountDownTimer mTimer = null;

    public void onCreate() {
        Log.d(LOG_TAG, "Op12SCBMService onCreate");
        IntentFilter filter = new IntentFilter();
        filter.addAction("com.mediatek.intent.action.ACTION_SCBM_CHANGED");
        registerReceiver(this.mScmReceiver, filter);
        this.mNotificationManager = (NotificationManager) getSystemService("notification");
        startTimerNotification();
    }

    public void onDestroy() {
        unregisterReceiver(this.mScmReceiver);
        CountDownTimer countDownTimer = this.mTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        stopForeground(true);
    }

    private void startTimerNotification() {
        showNotification(300000);
        CountDownTimer countDownTimer = this.mTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        } else {
            this.mTimer = new CountDownTimer(300000, 1000) {
                /* class com.mediatek.op12.phone.Op12SCBMService.AnonymousClass2 */

                public void onTick(long millisUntilFinished) {
                    Op12SCBMService.this.mTimeLeft = millisUntilFinished;
                }

                public void onFinish() {
                }
            };
        }
        this.mTimer.start();
    }

    private void showNotification(long millisUntilFinished) {
        String text;
        Notification.Builder builder = new Notification.Builder(getApplicationContext());
        builder.setOngoing(true);
        builder.setPriority(1);
        builder.setSmallIcon(R.drawable.ic_scbm);
        builder.setTicker(getText(R.string.phone_entered_scm_text));
        builder.setContentTitle(getText(R.string.phone_in_scm_notification_title));
        builder.setContentIntent(PendingIntent.getActivity(this, 0, new Intent("com.mediatek.op12.phone.action.ACTION_SHOW_SCM_EXIT_DIALOG"), 0));
        if (this.mInEmergencySMS) {
            text = getText(R.string.phone_in_scm_call_notification_text).toString();
        } else {
            long finishedCountMs = System.currentTimeMillis() + millisUntilFinished;
            builder.setShowWhen(true);
            builder.setChronometerCountDown(true);
            builder.setUsesChronometer(true);
            builder.setWhen(finishedCountMs);
            String completeTime = SimpleDateFormat.getTimeInstance(3).format(Long.valueOf(finishedCountMs));
            text = getResources().getString(R.string.phone_in_scm_notification_complete_time, completeTime);
        }
        builder.setContentText(text);
        this.mNotificationManager.createNotificationChannel(new NotificationChannel(CHANNEL_ID, getString(R.string.notification_channel_scbm), 3));
        builder.setChannelId(CHANNEL_ID);
        startForeground(R.string.phone_in_scm_notification_title, builder.build());
    }

    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    public class LocalBinder extends Binder {
        public LocalBinder() {
        }

        public Op12SCBMService getService() {
            return Op12SCBMService.this;
        }
    }

    public long getSCBMTimeout() {
        return this.mTimeLeft;
    }

    public boolean getSCBMState() {
        return this.mInEmergencySMS;
    }
}
