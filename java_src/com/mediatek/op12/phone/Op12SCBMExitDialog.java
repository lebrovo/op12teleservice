package com.mediatek.op12.phone;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.UserHandle;
import android.telephony.SubscriptionManager;
import android.util.Log;
import com.mediatek.op12.phone.Op12SCBMService;

public class Op12SCBMExitDialog extends Activity implements DialogInterface.OnCancelListener {
    static final String ACTION_SHOW_SCM_EXIT_DIALOG = "com.mediatek.op12.phone.action.ACTION_SHOW_SCM_EXIT_DIALOG";
    public static final int EXIT_SCM_DIALOG = 1;
    public static final int EXIT_SCM_IN_EMERGENCY_CALL_DIALOG = 3;
    public static final int EXIT_SCM_PROGRESS_DIALOG = 2;
    public static final String EXTRA_EXIT_SCM_RESULT = "exit_scm_result";
    private static final String TAG = "SCBMDialog";
    AlertDialog mAlertDialog = null;
    private ServiceConnection mConnection = new ServiceConnection() {
        /* class com.mediatek.op12.phone.Op12SCBMExitDialog.AnonymousClass7 */

        public void onServiceConnected(ComponentName className, IBinder service) {
            Op12SCBMExitDialog.this.mService = ((Op12SCBMService.LocalBinder) service).getService();
            synchronized (Op12SCBMExitDialog.this) {
                Op12SCBMExitDialog.this.notify();
            }
        }

        public void onServiceDisconnected(ComponentName className) {
            Op12SCBMExitDialog.this.mService = null;
        }
    };
    int mDialogType = 0;
    Handler mHandler = null;
    private boolean mInEmergencySms = false;
    private int mPhoneId;
    ProgressDialog mProgressDialog = null;
    private BroadcastReceiver mScmExitReceiver = new BroadcastReceiver() {
        /* class com.mediatek.op12.phone.Op12SCBMExitDialog.AnonymousClass6 */

        public void onReceive(Context context, Intent intent) {
            if (!intent.getAction().equals("com.mediatek.intent.action.ACTION_SCBM_CHANGED")) {
                return;
            }
            if (!intent.getBooleanExtra("phoneinSCMState", false)) {
                if (Op12SCBMExitDialog.this.mAlertDialog != null) {
                    Op12SCBMExitDialog.this.mAlertDialog.dismiss();
                }
                if (Op12SCBMExitDialog.this.mProgressDialog != null) {
                    Op12SCBMExitDialog.this.mProgressDialog.dismiss();
                }
                Op12SCBMExitDialog.this.setResult(-1, new Intent().putExtra(Op12SCBMExitDialog.EXTRA_EXIT_SCM_RESULT, true));
                Op12SCBMExitDialog.this.finish();
                return;
            }
            Op12SCBMExitDialog.this.mPhoneId = intent.getIntExtra("phone", 0);
            Log.d(Op12SCBMExitDialog.TAG, "ACTION_SCBM_CHANGED true. phoneId =" + Op12SCBMExitDialog.this.mPhoneId);
        }
    };
    long mScmTimeout = 0;
    Op12SCBMService mService = null;
    private Runnable mTask = new Runnable() {
        /* class com.mediatek.op12.phone.Op12SCBMExitDialog.AnonymousClass1 */

        public void run() {
            Looper.prepare();
            Op12SCBMExitDialog.this.bindService(new Intent(Op12SCBMExitDialog.this, Op12SCBMService.class), Op12SCBMExitDialog.this.mConnection, 1);
            synchronized (Op12SCBMExitDialog.this) {
                try {
                    if (Op12SCBMExitDialog.this.mService == null) {
                        Op12SCBMExitDialog.this.wait();
                    }
                } catch (InterruptedException e) {
                    Log.d("SCM", "Op12SCBMExitDialog InterruptedException: " + e.getMessage());
                    e.printStackTrace();
                }
            }
            if (Op12SCBMExitDialog.this.mService != null) {
                Op12SCBMExitDialog op12SCBMExitDialog = Op12SCBMExitDialog.this;
                op12SCBMExitDialog.mScmTimeout = op12SCBMExitDialog.mService.getSCBMTimeout();
                Op12SCBMExitDialog op12SCBMExitDialog2 = Op12SCBMExitDialog.this;
                op12SCBMExitDialog2.mInEmergencySms = op12SCBMExitDialog2.mService.getSCBMState();
                try {
                    Op12SCBMExitDialog.this.unbindService(Op12SCBMExitDialog.this.mConnection);
                } catch (IllegalArgumentException e2) {
                    Log.w(Op12SCBMExitDialog.TAG, "Failed to unbind from Op12SCBMService");
                }
            }
            Op12SCBMExitDialog.this.mHandler.post(new Runnable() {
                /* class com.mediatek.op12.phone.Op12SCBMExitDialog.AnonymousClass1.AnonymousClass1 */

                public void run() {
                    Op12SCBMExitDialog.this.showSCBMExitDialog();
                }
            });
        }
    };
    CountDownTimer mTimer = null;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mHandler = new Handler();
        new Thread(null, this.mTask, "ScmExitDialogWaitThread").start();
        IntentFilter filter = new IntentFilter();
        filter.addAction("com.mediatek.intent.action.ACTION_SCBM_CHANGED");
        registerReceiver(this.mScmExitReceiver, filter);
    }

    public void onDestroy() {
        super.onDestroy();
        try {
            unregisterReceiver(this.mScmExitReceiver);
        } catch (IllegalArgumentException e) {
        }
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        this.mDialogType = savedInstanceState.getInt("DIALOG_TYPE");
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putInt("DIALOG_TYPE", this.mDialogType);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void showSCBMExitDialog() {
        if (!isResumed()) {
            Log.w(TAG, "Tried to show dialog, but activity was already finished");
            setResult(-1, new Intent().putExtra(EXTRA_EXIT_SCM_RESULT, false));
            finish();
        } else if (this.mInEmergencySms) {
            this.mDialogType = 3;
            showDialog(3);
        } else {
            if (getIntent().getAction().equals(ACTION_SHOW_SCM_EXIT_DIALOG)) {
                this.mDialogType = 1;
                showDialog(1);
            }
            this.mTimer = new CountDownTimer(this.mScmTimeout, 1000) {
                /* class com.mediatek.op12.phone.Op12SCBMExitDialog.AnonymousClass2 */

                public void onTick(long millisUntilFinished) {
                    Op12SCBMExitDialog.this.mAlertDialog.setMessage(Op12SCBMExitDialog.this.getDialogText(millisUntilFinished));
                }

                public void onFinish() {
                }
            }.start();
        }
    }

    /* access modifiers changed from: protected */
    public Dialog onCreateDialog(int id) {
        if (id == 1) {
            AlertDialog create = new AlertDialog.Builder(this, 16974545).setTitle(R.string.phone_in_scm_notification_title).setMessage(getDialogText(this.mScmTimeout)).setPositiveButton(R.string.alert_dialog_yes, new DialogInterface.OnClickListener() {
                /* class com.mediatek.op12.phone.Op12SCBMExitDialog.AnonymousClass4 */

                public void onClick(DialogInterface dialog, int whichButton) {
                    Intent intent = new Intent("com.mediatek.intent.action.ACTION_EXIT_SCBM");
                    SubscriptionManager.putPhoneIdAndSubIdExtra(intent, Op12SCBMExitDialog.this.mPhoneId);
                    Op12SCBMExitDialog.this.sendBroadcastAsUser(intent, UserHandle.ALL);
                    Op12SCBMExitDialog.this.showDialog(2);
                    Op12SCBMExitDialog.this.mTimer.cancel();
                }
            }).setNegativeButton(R.string.alert_dialog_no, new DialogInterface.OnClickListener() {
                /* class com.mediatek.op12.phone.Op12SCBMExitDialog.AnonymousClass3 */

                public void onClick(DialogInterface dialog, int whichButton) {
                    Op12SCBMExitDialog.this.setResult(-1, new Intent().putExtra(Op12SCBMExitDialog.EXTRA_EXIT_SCM_RESULT, false));
                    Op12SCBMExitDialog.this.finish();
                }
            }).create();
            this.mAlertDialog = create;
            create.setOnCancelListener(this);
            return this.mAlertDialog;
        } else if (id == 2) {
            ProgressDialog progressDialog = new ProgressDialog(this);
            this.mProgressDialog = progressDialog;
            progressDialog.setMessage(getText(R.string.progress_dialog_exiting_scm));
            this.mProgressDialog.setIndeterminate(true);
            this.mProgressDialog.setCancelable(false);
            return this.mProgressDialog;
        } else if (id != 3) {
            return null;
        } else {
            AlertDialog create2 = new AlertDialog.Builder(this, 16974545).setTitle(R.string.phone_in_scm_notification_title).setMessage(R.string.alert_dialog_in_scm_call).setNeutralButton(R.string.alert_dialog_dismiss, new DialogInterface.OnClickListener() {
                /* class com.mediatek.op12.phone.Op12SCBMExitDialog.AnonymousClass5 */

                public void onClick(DialogInterface dialog, int whichButton) {
                    Op12SCBMExitDialog.this.setResult(-1, new Intent().putExtra(Op12SCBMExitDialog.EXTRA_EXIT_SCM_RESULT, false));
                    Op12SCBMExitDialog.this.finish();
                }
            }).create();
            this.mAlertDialog = create2;
            create2.setOnCancelListener(this);
            return this.mAlertDialog;
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private CharSequence getDialogText(long millisUntilFinished) {
        int minutes = (int) (millisUntilFinished / 60000);
        String time = String.format("%d:%02d", Integer.valueOf(minutes), Long.valueOf((millisUntilFinished % 60000) / 1000));
        if (this.mDialogType != 1) {
            return null;
        }
        return String.format(getResources().getQuantityText(R.plurals.alert_dialog_exit_scm, minutes).toString(), time);
    }

    public void onCancel(DialogInterface dialog) {
        setResult(-1, new Intent().putExtra(EXTRA_EXIT_SCM_RESULT, false));
        finish();
    }
}
