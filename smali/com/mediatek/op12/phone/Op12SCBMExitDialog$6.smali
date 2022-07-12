.class Lcom/mediatek/op12/phone/Op12SCBMExitDialog$6;
.super Landroid/content/BroadcastReceiver;
.source "Op12SCBMExitDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op12/phone/Op12SCBMExitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    .line 318
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$6;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.intent.action.ACTION_SCBM_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    const-string v0, "phoneinSCMState"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$6;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    iget-object v0, v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$6;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    iget-object v0, v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$6;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    iget-object v0, v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$6;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    iget-object v0, v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$6;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x1

    .line 330
    const-string v4, "exit_scm_result"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 329
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->setResult(ILandroid/content/Intent;)V

    .line 331
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$6;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-virtual {v0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->finish()V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$6;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    const-string v2, "phone"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->access$402(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;I)I

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_SCBM_CHANGED true. phoneId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$6;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->access$400(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCBMDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_3
    :goto_0
    return-void
.end method
