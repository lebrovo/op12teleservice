.class Lcom/mediatek/op12/phone/Op12SCBMExitDialog$4;
.super Ljava/lang/Object;
.source "Op12SCBMExitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->onCreateDialog(I)Landroid/app/Dialog;
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

    .line 233
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$4;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.intent.action.ACTION_EXIT_SCBM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$4;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->access$400(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 239
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$4;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 243
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$4;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->showDialog(I)V

    .line 244
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$4;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    iget-object v1, v1, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 245
    return-void
.end method
