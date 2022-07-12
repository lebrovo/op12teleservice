package com.mediatek.op12.phone;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.CountDownTimer;
import android.os.Handler;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.provider.Settings;
import android.telephony.SubscriptionManager;
import android.util.Log;
import com.android.ims.ImsException;
import com.android.ims.ImsManager;
import com.android.phone.CallFeaturesSetting;
import com.mediatek.phone.ext.DefaultCallFeaturesSettingExt;

public class Op12CallFeaturesSettingExt extends DefaultCallFeaturesSettingExt {
    private static final String DISABLE_VIDEO_CALLING_KEY = "disable_video_calling";
    private static final String ENABLE_VIDEO_CALLING_KEY = "button_enable_video_calling";
    private static final String KEY_WFC_SETTINGS = "button_wifi_calling_settings_key";
    private static final String TAG = "Op12CallFeaturesSettingExt";
    private CallFeaturesSetting mCallSettingActivity;
    private Context mContext;
    private DisabledAppearancePreference mDisablePreference;
    private SwitchPreference mEnableVideoCalling;
    private BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        /* class com.mediatek.op12.phone.Op12CallFeaturesSettingExt.AnonymousClass1 */

        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Log.d(Op12CallFeaturesSettingExt.TAG, "onReceive()... " + action);
            if (Op12CallFeaturesSettingExt.this.mCallSettingActivity != null) {
                Op12CallFeaturesSettingExt.this.handleVideoSettingProvisioning();
            }
        }
    };
    private boolean mLVCEnabled;
    private boolean mVolteProvisioned;

    public Op12CallFeaturesSettingExt(Context context) {
        this.mContext = context;
        DisabledAppearancePreference disabledAppearancePreference = new DisabledAppearancePreference(this.mContext, null);
        this.mDisablePreference = disabledAppearancePreference;
        disabledAppearancePreference.setKey(DISABLE_VIDEO_CALLING_KEY);
        this.mDisablePreference.setTitle(this.mContext.getString(R.string.video_calling_title));
        this.mDisablePreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() {
            /* class com.mediatek.op12.phone.Op12CallFeaturesSettingExt.AnonymousClass2 */

            public boolean onPreferenceChange(Preference preference, Object newValue) {
                Op12CallFeaturesSettingExt op12CallFeaturesSettingExt = Op12CallFeaturesSettingExt.this;
                op12CallFeaturesSettingExt.handleDisabledPreferenceClick(op12CallFeaturesSettingExt.mCallSettingActivity);
                return false;
            }
        });
        this.mContext.registerReceiver(this.mIntentReceiver, new IntentFilter("com.android.intent.action.IMS_CONFIG_CHANGED"));
    }

    public void initOtherCallFeaturesSetting(PreferenceActivity activity, Object phone) {
        Log.d(TAG, "initOtherCallFeaturesSetting");
        CallFeaturesSetting callFeaturesSetting = (CallFeaturesSetting) activity;
        this.mCallSettingActivity = callFeaturesSetting;
        PreferenceScreen prefScreen = callFeaturesSetting.getPreferenceScreen();
        this.mEnableVideoCalling = (SwitchPreference) prefScreen.findPreference(ENABLE_VIDEO_CALLING_KEY);
        handleVideoSettingProvisioning();
        Preference wfcPreference = prefScreen.findPreference(KEY_WFC_SETTINGS);
        if (wfcPreference != null) {
            prefScreen.removePreference(wfcPreference);
            Log.d(TAG, "WFC Preference is removed in Call Settings");
            return;
        }
        Log.d(TAG, "WFC Preference is not removed in Call Settingss");
    }

    public void videoPreferenceChange(boolean value) {
        Log.d(TAG, "videoPreferenceChange:" + value);
        if (value) {
            Settings.Global.putInt(this.mContext.getContentResolver(), "KEY_CALL_OPTIONS", 1);
        } else {
            Settings.Global.putInt(this.mContext.getContentResolver(), "KEY_CALL_OPTIONS", 0);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void handleVideoSettingProvisioning() {
        PreferenceScreen prefScreen = this.mCallSettingActivity.getPreferenceScreen();
        DisabledAppearancePreference disablePreference = (DisabledAppearancePreference) prefScreen.findPreference(DISABLE_VIDEO_CALLING_KEY);
        try {
            boolean z = true;
            if (1 != ImsManager.getInstance(this.mContext, SubscriptionManager.getDefaultVoicePhoneId()).getConfigInterface().getProvisionedValue(11)) {
                z = false;
            }
            this.mLVCEnabled = z;
            if (ImsManager.isVolteProvisionedOnDevice(this.mContext)) {
                Log.d(TAG, "VoLTE provisioned");
                if (this.mEnableVideoCalling != null) {
                    this.mDisablePreference.setOrder(this.mEnableVideoCalling.getOrder());
                    handleVideoPreference(prefScreen);
                    return;
                }
                return;
            }
            Log.d(TAG, "VoLTE de-provisioned");
            if (this.mEnableVideoCalling != null) {
                prefScreen.removePreference(this.mEnableVideoCalling);
                Log.d(TAG, "VideoCalling Preference removed");
            }
            if (disablePreference != null) {
                prefScreen.removePreference(disablePreference);
                Log.d(TAG, "Video disablePreference removed");
            }
        } catch (ImsException e) {
            Log.e(TAG, "Video call settings not updated, ImsConfig null");
            e.printStackTrace();
        }
    }

    private void handleVideoPreference(PreferenceScreen prefSet) {
        DisabledAppearancePreference disablePreference = (DisabledAppearancePreference) prefSet.findPreference(DISABLE_VIDEO_CALLING_KEY);
        SwitchPreference enableVideoCalling = (SwitchPreference) prefSet.findPreference(ENABLE_VIDEO_CALLING_KEY);
        boolean advancedCalling = ImsManager.isEnhanced4gLteModeSettingEnabledByUser(this.mContext);
        Log.d(TAG, "handleVideoPreference, mLVCEnabled: " + this.mLVCEnabled + " advancedCalling:" + advancedCalling);
        if (!this.mLVCEnabled || !advancedCalling) {
            if (enableVideoCalling != null) {
                prefSet.removePreference(this.mEnableVideoCalling);
                Log.d(TAG, "LVC Disabled, so remove video calling Setting Option");
            }
            if (disablePreference == null) {
                prefSet.addPreference(this.mDisablePreference);
                Log.d(TAG, "LVC Disabled, so add disabled video calling Setting Option");
            }
        } else if (this.mEnableVideoCalling != null) {
            if (disablePreference != null) {
                prefSet.removePreference(this.mDisablePreference);
                Log.d(TAG, "LVC Enabled, so remove disabled video calling Setting Option");
            }
            if (enableVideoCalling == null) {
                prefSet.addPreference(this.mEnableVideoCalling);
            }
            boolean videoCalling = true;
            if (Settings.Global.getInt(this.mContext.getContentResolver(), "KEY_CALL_OPTIONS", 1) != 1) {
                videoCalling = false;
            }
            Log.d(TAG, "handleVideoPreference, Restore Video Preference Checked:" + videoCalling);
            this.mEnableVideoCalling.setChecked(videoCalling);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void restoreVideoPreference() {
        final PreferenceScreen prefScreen = this.mCallSettingActivity.getPreferenceScreen();
        new CountDownTimer(3000, 1000) {
            /* class com.mediatek.op12.phone.Op12CallFeaturesSettingExt.AnonymousClass3 */

            public void onTick(long millisUntilFinished) {
                Log.d(Op12CallFeaturesSettingExt.TAG, "Timer started");
            }

            public void onFinish() {
                prefScreen.removePreference(Op12CallFeaturesSettingExt.this.mDisablePreference);
                prefScreen.addPreference(Op12CallFeaturesSettingExt.this.mEnableVideoCalling);
                boolean videoCalling = true;
                if (Settings.Global.getInt(Op12CallFeaturesSettingExt.this.mContext.getContentResolver(), "KEY_CALL_OPTIONS", 1) != 1) {
                    videoCalling = false;
                }
                Log.d(Op12CallFeaturesSettingExt.TAG, "restoreVideoPreference: videoCalling preference value restored:" + videoCalling);
                Op12CallFeaturesSettingExt.this.mEnableVideoCalling.setChecked(videoCalling);
            }
        }.start();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void handleDisabledPreferenceClick(final Context appContext) {
        boolean advancedCalling = ImsManager.isEnhanced4gLteModeSettingEnabledByUser(this.mContext);
        if (!this.mLVCEnabled) {
            Log.d(TAG, "handleDisabledPreferenceClick: LVC disabled");
            new Handler(this.mContext.getMainLooper()).post(new Runnable() {
                /* class com.mediatek.op12.phone.Op12CallFeaturesSettingExt.AnonymousClass4 */

                public void run() {
                    AlertDialog.Builder builder = new AlertDialog.Builder(appContext);
                    builder.setCancelable(false);
                    builder.setTitle(Op12CallFeaturesSettingExt.this.mContext.getString(R.string.note));
                    builder.setMessage(Op12CallFeaturesSettingExt.this.mContext.getString(R.string.lvc_disable));
                    builder.setPositiveButton(17039370, (DialogInterface.OnClickListener) null);
                    builder.create().show();
                }
            });
        } else if (!advancedCalling) {
            Log.d(TAG, "handleDisabledPreferenceClick: advancedCalling disabled");
            new Handler(this.mContext.getMainLooper()).post(new Runnable() {
                /* class com.mediatek.op12.phone.Op12CallFeaturesSettingExt.AnonymousClass5 */

                public void run() {
                    AlertDialog.Builder builder = new AlertDialog.Builder(appContext);
                    builder.setCancelable(false);
                    builder.setTitle(Op12CallFeaturesSettingExt.this.mContext.getString(R.string.note));
                    builder.setMessage(Op12CallFeaturesSettingExt.this.mContext.getString(R.string.volte_disable));
                    builder.setPositiveButton(Op12CallFeaturesSettingExt.this.mContext.getString(R.string.volte_calling_title), new DialogInterface.OnClickListener() {
                        /* class com.mediatek.op12.phone.Op12CallFeaturesSettingExt.AnonymousClass5.AnonymousClass1 */

                        public void onClick(DialogInterface dialog, int which) {
                            ImsManager.setEnhanced4gLteModeSetting(Op12CallFeaturesSettingExt.this.mContext, true);
                            Op12CallFeaturesSettingExt.this.restoreVideoPreference();
                        }
                    });
                    builder.setNegativeButton(17039360, (DialogInterface.OnClickListener) null);
                    builder.create().show();
                }
            });
        }
    }
}
