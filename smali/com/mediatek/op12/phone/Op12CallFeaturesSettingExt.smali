.class public Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;
.super Lcom/mediatek/phone/ext/DefaultCallFeaturesSettingExt;
.source "Op12CallFeaturesSettingExt.java"


# static fields
.field private static final DISABLE_VIDEO_CALLING_KEY:Ljava/lang/String; = "disable_video_calling"

.field private static final ENABLE_VIDEO_CALLING_KEY:Ljava/lang/String; = "button_enable_video_calling"

.field private static final KEY_WFC_SETTINGS:Ljava/lang/String; = "button_wifi_calling_settings_key"

.field private static final TAG:Ljava/lang/String; = "Op12CallFeaturesSettingExt"


# instance fields
.field private mCallSettingActivity:Lcom/android/phone/CallFeaturesSetting;

.field private mContext:Landroid/content/Context;

.field private mDisablePreference:Lcom/mediatek/op12/phone/DisabledAppearancePreference;

.field private mEnableVideoCalling:Landroid/preference/SwitchPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLVCEnabled:Z

.field private mVolteProvisioned:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/mediatek/phone/ext/DefaultCallFeaturesSettingExt;-><init>()V

    .line 39
    new-instance v0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$1;-><init>(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)V

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/mediatek/op12/phone/DisabledAppearancePreference;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/op12/phone/DisabledAppearancePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mDisablePreference:Lcom/mediatek/op12/phone/DisabledAppearancePreference;

    .line 53
    const-string v1, "disable_video_calling"

    invoke-virtual {v0, v1}, Lcom/mediatek/op12/phone/DisabledAppearancePreference;->setKey(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mDisablePreference:Lcom/mediatek/op12/phone/DisabledAppearancePreference;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    const v2, 0x7f030019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/op12/phone/DisabledAppearancePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mDisablePreference:Lcom/mediatek/op12/phone/DisabledAppearancePreference;

    new-instance v1, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$2;

    invoke-direct {v1, p0}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$2;-><init>(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/op12/phone/DisabledAppearancePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Lcom/android/phone/CallFeaturesSetting;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    .line 27
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mCallSettingActivity:Lcom/android/phone/CallFeaturesSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    .line 27
    invoke-direct {p0}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->handleVideoSettingProvisioning()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;
    .param p1, "x1"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->handleDisabledPreferenceClick(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Lcom/mediatek/op12/phone/DisabledAppearancePreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    .line 27
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mDisablePreference:Lcom/mediatek/op12/phone/DisabledAppearancePreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    .line 27
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    .line 27
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    .line 27
    invoke-direct {p0}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->restoreVideoPreference()V

    return-void
.end method

.method private handleDisabledPreferenceClick(Landroid/content/Context;)V
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;

    .line 180
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    .line 181
    .local v0, "advancedCalling":Z
    iget-boolean v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mLVCEnabled:Z

    const-string v2, "Op12CallFeaturesSettingExt"

    if-nez v1, :cond_0

    .line 182
    const-string v1, "handleDisabledPreferenceClick: LVC disabled"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 184
    .local v1, "mainHandler":Landroid/os/Handler;
    new-instance v2, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$4;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$4;-><init>(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v1    # "mainHandler":Landroid/os/Handler;
    goto :goto_0

    .line 196
    :cond_0
    if-nez v0, :cond_1

    .line 197
    const-string v1, "handleDisabledPreferenceClick: advancedCalling disabled"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    .restart local v1    # "mainHandler":Landroid/os/Handler;
    new-instance v2, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;-><init>(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 196
    .end local v1    # "mainHandler":Landroid/os/Handler;
    :cond_1
    :goto_0
    nop

    .line 220
    :goto_1
    return-void
.end method

.method private handleVideoPreference(Landroid/preference/PreferenceScreen;)V
    .locals 7
    .param p1, "prefSet"    # Landroid/preference/PreferenceScreen;

    .line 129
    nop

    .line 130
    const-string v0, "disable_video_calling"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/op12/phone/DisabledAppearancePreference;

    .line 131
    .local v0, "disablePreference":Lcom/mediatek/op12/phone/DisabledAppearancePreference;
    nop

    .line 132
    const-string v1, "button_enable_video_calling"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 133
    .local v1, "enableVideoCalling":Landroid/preference/SwitchPreference;
    iget-object v2, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v2

    .line 134
    .local v2, "advancedCalling":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleVideoPreference, mLVCEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mLVCEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " advancedCalling:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Op12CallFeaturesSettingExt"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v3, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mLVCEnabled:Z

    if-eqz v3, :cond_4

    if-nez v2, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_6

    .line 146
    if-eqz v0, :cond_1

    .line 147
    iget-object v3, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mDisablePreference:Lcom/mediatek/op12/phone/DisabledAppearancePreference;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    const-string v3, "LVC Enabled, so remove disabled video calling Setting Option"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    if-nez v1, :cond_2

    .line 151
    iget-object v3, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 153
    :cond_2
    iget-object v3, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "KEY_CALL_OPTIONS"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    move v3, v6

    .line 155
    .local v3, "videoCalling":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVideoPreference, Restore Video Preference Checked:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v4, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 137
    .end local v3    # "videoCalling":Z
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 138
    iget-object v3, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    const-string v3, "LVC Disabled, so remove video calling Setting Option"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_5
    if-nez v0, :cond_6

    .line 142
    iget-object v3, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mDisablePreference:Lcom/mediatek/op12/phone/DisabledAppearancePreference;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 143
    const-string v3, "LVC Disabled, so add disabled video calling Setting Option"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_6
    :goto_2
    return-void
.end method

.method private handleVideoSettingProvisioning()V
    .locals 6

    .line 97
    const-string v0, "Op12CallFeaturesSettingExt"

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mCallSettingActivity:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 98
    .local v1, "prefScreen":Landroid/preference/PreferenceScreen;
    nop

    .line 99
    const-string v2, "disable_video_calling"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/op12/phone/DisabledAppearancePreference;

    .line 101
    .local v2, "disablePreference":Lcom/mediatek/op12/phone/DisabledAppearancePreference;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v4

    .line 101
    invoke-static {v3, v4}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v3

    .line 103
    .local v3, "imsConfig":Lcom/android/ims/ImsConfig;
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mLVCEnabled:Z

    .line 105
    iget-object v4, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    const-string v4, "VoLTE provisioned"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v4, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    .line 108
    iget-object v4, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mDisablePreference:Lcom/mediatek/op12/phone/DisabledAppearancePreference;

    iget-object v5, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/op12/phone/DisabledAppearancePreference;->setOrder(I)V

    .line 109
    invoke-direct {p0, v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->handleVideoPreference(Landroid/preference/PreferenceScreen;)V

    goto :goto_1

    .line 112
    :cond_1
    const-string v4, "VoLTE de-provisioned"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v4, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    const-string v4, "VideoCalling Preference removed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    if-eqz v2, :cond_3

    .line 118
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    const-string v4, "Video disablePreference removed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v3    # "imsConfig":Lcom/android/ims/ImsConfig;
    :cond_3
    :goto_1
    goto :goto_2

    .line 122
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Lcom/android/ims/ImsException;
    const-string v4, "Video call settings not updated, ImsConfig null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v3}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 126
    .end local v3    # "e":Lcom/android/ims/ImsException;
    :goto_2
    return-void
.end method

.method private restoreVideoPreference()V
    .locals 9

    .line 162
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mCallSettingActivity:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 163
    .local v0, "prefScreen":Landroid/preference/PreferenceScreen;
    new-instance v8, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$3;

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0x3e8

    move-object v1, v8

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$3;-><init>(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;JJLandroid/preference/PreferenceScreen;)V

    .line 176
    invoke-virtual {v8}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$3;->start()Landroid/os/CountDownTimer;

    .line 177
    return-void
.end method


# virtual methods
.method public initOtherCallFeaturesSetting(Landroid/preference/PreferenceActivity;Ljava/lang/Object;)V
    .locals 4
    .param p1, "activity"    # Landroid/preference/PreferenceActivity;
    .param p2, "phone"    # Ljava/lang/Object;

    .line 69
    const-string v0, "Op12CallFeaturesSettingExt"

    const-string v1, "initOtherCallFeaturesSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    move-object v1, p1

    check-cast v1, Lcom/android/phone/CallFeaturesSetting;

    iput-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mCallSettingActivity:Lcom/android/phone/CallFeaturesSetting;

    .line 71
    invoke-virtual {v1}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 72
    .local v1, "prefScreen":Landroid/preference/PreferenceScreen;
    nop

    .line 73
    const-string v2, "button_enable_video_calling"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mEnableVideoCalling:Landroid/preference/SwitchPreference;

    .line 74
    invoke-direct {p0}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->handleVideoSettingProvisioning()V

    .line 75
    const-string v2, "button_wifi_calling_settings_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 76
    .local v2, "wfcPreference":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 78
    const-string v3, "WFC Preference is removed in Call Settings"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_0
    const-string v3, "WFC Preference is not removed in Call Settingss"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void
.end method

.method public videoPreferenceChange(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoPreferenceChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Op12CallFeaturesSettingExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v0, "KEY_CALL_OPTIONS"

    if-eqz p1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    :goto_0
    return-void
.end method
