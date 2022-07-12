.class public Lcom/mediatek/op12/phone/Op12SCBMService;
.super Landroid/app/Service;
.source "Op12SCBMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/op12/phone/Op12SCBMService$LocalBinder;
    }
.end annotation


# static fields
.field private static CHANNEL_ID:Ljava/lang/String; = null

.field private static final DEFAULT_SCM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final LOG_TAG:Ljava/lang/String; = "Op12SCBMService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mInEmergencySMS:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mScmReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeLeft:J

.field private mTimer:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const-string v0, "scbm_channel"

    sput-object v0, Lcom/mediatek/op12/phone/Op12SCBMService;->CHANNEL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 79
    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mTimer:Landroid/os/CountDownTimer;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mTimeLeft:J

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mInEmergencySMS:Z

    .line 110
    new-instance v0, Lcom/mediatek/op12/phone/Op12SCBMService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/op12/phone/Op12SCBMService$1;-><init>(Lcom/mediatek/op12/phone/Op12SCBMService;)V

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mScmReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v0, Lcom/mediatek/op12/phone/Op12SCBMService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/op12/phone/Op12SCBMService$LocalBinder;-><init>(Lcom/mediatek/op12/phone/Op12SCBMService;)V

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/op12/phone/Op12SCBMService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12SCBMService;
    .param p1, "x1"    # J

    .line 72
    iput-wide p1, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mTimeLeft:J

    return-wide p1
.end method

.method private showNotification(J)V
    .locals 12
    .param p1, "millisUntilFinished"    # J

    .line 158
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/mediatek/op12/phone/Op12SCBMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "builder":Landroid/app/Notification$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 160
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 161
    const v2, 0x7f010001

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 162
    const v2, 0x7f030011

    invoke-virtual {p0, v2}, Lcom/mediatek/op12/phone/Op12SCBMService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 163
    const v2, 0x7f030014

    invoke-virtual {p0, v2}, Lcom/mediatek/op12/phone/Op12SCBMService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 167
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.mediatek.op12.phone.action.ACTION_SHOW_SCM_EXIT_DIALOG"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 169
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 172
    const/4 v5, 0x0

    .line 173
    .local v5, "text":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mInEmergencySMS:Z

    const/4 v7, 0x3

    if-eqz v6, :cond_0

    .line 174
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/mediatek/op12/phone/Op12SCBMService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v5    # "text":Ljava/lang/String;
    .local v1, "text":Ljava/lang/String;
    goto :goto_0

    .line 177
    .end local v1    # "text":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, p1

    .line 178
    .local v8, "finishedCountMs":J
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChronometerCountDown(Z)Landroid/app/Notification$Builder;

    .line 180
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 181
    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 183
    invoke-static {v7}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v6

    .line 184
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 183
    invoke-virtual {v6, v10}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "completeTime":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/op12/phone/Op12SCBMService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f030013

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v4

    invoke-virtual {v10, v11, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "completeTime":Ljava/lang/String;
    .end local v8    # "finishedCountMs":J
    .restart local v1    # "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 190
    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v5, Lcom/mediatek/op12/phone/Op12SCBMService;->CHANNEL_ID:Ljava/lang/String;

    const v6, 0x7f030010

    .line 191
    invoke-virtual {p0, v6}, Lcom/mediatek/op12/phone/Op12SCBMService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 193
    .local v4, "channel":Landroid/app/NotificationChannel;
    iget-object v5, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 194
    sget-object v5, Lcom/mediatek/op12/phone/Op12SCBMService;->CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 197
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/mediatek/op12/phone/Op12SCBMService;->startForeground(ILandroid/app/Notification;)V

    .line 198
    return-void
.end method

.method private startTimerNotification()V
    .locals 9

    .line 128
    const-wide/32 v6, 0x493e0

    .line 131
    .local v6, "scmTimeout":J
    invoke-direct {p0, v6, v7}, Lcom/mediatek/op12/phone/Op12SCBMService;->showNotification(J)V

    .line 134
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0

    .line 137
    :cond_0
    new-instance v8, Lcom/mediatek/op12/phone/Op12SCBMService$2;

    const-wide/16 v4, 0x3e8

    move-object v0, v8

    move-object v1, p0

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/op12/phone/Op12SCBMService$2;-><init>(Lcom/mediatek/op12/phone/Op12SCBMService;JJ)V

    iput-object v8, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mTimer:Landroid/os/CountDownTimer;

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 152
    return-void
.end method


# virtual methods
.method public getSCBMState()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mInEmergencySMS:Z

    return v0
.end method

.method public getSCBMTimeout()J
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mTimeLeft:J

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 85
    const-string v0, "Op12SCBMService"

    const-string v1, "Op12SCBMService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.intent.action.ACTION_SCBM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mScmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/op12/phone/Op12SCBMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/mediatek/op12/phone/Op12SCBMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 93
    invoke-direct {p0}, Lcom/mediatek/op12/phone/Op12SCBMService;->startTimerNotification()V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mScmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/op12/phone/Op12SCBMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 104
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/op12/phone/Op12SCBMService;->stopForeground(Z)V

    .line 105
    return-void
.end method
