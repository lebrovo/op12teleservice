.class public Lcom/mediatek/op12/phone/Op12SCBMExitDialog;
.super Landroid/app/Activity;
.source "Op12SCBMExitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field static final ACTION_SHOW_SCM_EXIT_DIALOG:Ljava/lang/String; = "com.mediatek.op12.phone.action.ACTION_SHOW_SCM_EXIT_DIALOG"

.field public static final EXIT_SCM_DIALOG:I = 0x1

.field public static final EXIT_SCM_IN_EMERGENCY_CALL_DIALOG:I = 0x3

.field public static final EXIT_SCM_PROGRESS_DIALOG:I = 0x2

.field public static final EXTRA_EXIT_SCM_RESULT:Ljava/lang/String; = "exit_scm_result"

.field private static final TAG:Ljava/lang/String; = "SCBMDialog"


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field private mConnection:Landroid/content/ServiceConnection;

.field mDialogType:I

.field mHandler:Landroid/os/Handler;

.field private mInEmergencySms:Z

.field private mPhoneId:I

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mScmExitReceiver:Landroid/content/BroadcastReceiver;

.field mScmTimeout:J

.field mService:Lcom/mediatek/op12/phone/Op12SCBMService;

.field private mTask:Ljava/lang/Runnable;

.field mTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 90
    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 91
    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mTimer:Landroid/os/CountDownTimer;

    .line 92
    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mService:Lcom/mediatek/op12/phone/Op12SCBMService;

    .line 93
    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mHandler:Landroid/os/Handler;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mDialogType:I

    .line 95
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mScmTimeout:J

    .line 96
    iput-boolean v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mInEmergencySms:Z

    .line 142
    new-instance v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;

    invoke-direct {v0, p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;-><init>(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)V

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mTask:Ljava/lang/Runnable;

    .line 318
    new-instance v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$6;

    invoke-direct {v0, p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$6;-><init>(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)V

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mScmExitReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    new-instance v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$7;

    invoke-direct {v0, p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$7;-><init>(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)V

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    .line 75
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12SCBMExitDialog;
    .param p1, "x1"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mInEmergencySms:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    .line 75
    invoke-direct {p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->showSCBMExitDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12SCBMExitDialog;
    .param p1, "x1"    # J

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->getDialogText(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    .line 75
    iget v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mPhoneId:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/op12/phone/Op12SCBMExitDialog;
    .param p1, "x1"    # I

    .line 75
    iput p1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mPhoneId:I

    return p1
.end method

.method private getDialogText(J)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "millisUntilFinished"    # J

    .line 293
    const-wide/32 v0, 0xea60

    div-long v2, p1, v0

    long-to-int v2, v2

    .line 294
    .local v2, "minutes":I
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    rem-long v0, p1, v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 295
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    .line 294
    const-string v0, "%d:%02d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "time":Ljava/lang/String;
    iget v3, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mDialogType:I

    if-eq v3, v1, :cond_0

    .line 302
    const/4 v1, 0x0

    return-object v1

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020001

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 300
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v5

    .line 299
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private showSCBMExitDialog()V
    .locals 7

    .line 190
    invoke-virtual {p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const-string v0, "SCBMDialog"

    const-string v1, "Tried to show dialog, but activity was already finished"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    const-string v3, "exit_scm_result"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->setResult(ILandroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->finish()V

    .line 194
    return-void

    .line 196
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mInEmergencySms:Z

    if-eqz v0, :cond_1

    .line 197
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mDialogType:I

    .line 198
    invoke-virtual {p0, v0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->showDialog(I)V

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.op12.phone.action.ACTION_SHOW_SCM_EXIT_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mDialogType:I

    .line 202
    invoke-virtual {p0, v0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->showDialog(I)V

    .line 205
    :cond_2
    new-instance v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$2;

    iget-wide v3, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mScmTimeout:J

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$2;-><init>(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;JJ)V

    .line 216
    invoke-virtual {v0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mTimer:Landroid/os/CountDownTimer;

    .line 218
    :goto_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 311
    const-string v1, "exit_scm_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 310
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->setResult(ILandroid/content/Intent;)V

    .line 312
    invoke-virtual {p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->finish()V

    .line 313
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mTask:Ljava/lang/Runnable;

    const/4 v2, 0x0

    const-string v3, "ScmExitDialogWaitThread"

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 109
    .local v0, "waitForConnectionCompleteThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.intent.action.ACTION_SCBM_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mScmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .line 225
    const v0, 0x7f030014

    const v1, 0x10302d1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 284
    const/4 v0, 0x0

    return-object v0

    .line 260
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 262
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030009

    .line 263
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030008

    new-instance v2, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$5;

    invoke-direct {v2, p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$5;-><init>(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)V

    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 273
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 274
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 277
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 278
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 280
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 281
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 227
    :cond_2
    iget-wide v2, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mScmTimeout:J

    invoke-direct {p0, v2, v3}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->getDialogText(J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 228
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 230
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f03000b

    new-instance v3, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$4;

    invoke-direct {v3, p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$4;-><init>(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)V

    .line 232
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f03000a

    new-instance v3, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$3;

    invoke-direct {v3, p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$3;-><init>(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)V

    .line 247
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 256
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 257
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mScmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 125
    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 130
    const-string v0, "DIALOG_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mDialogType:I

    .line 131
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    iget v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mDialogType:I

    const-string v1, "DIALOG_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    return-void
.end method
