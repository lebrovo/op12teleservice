.class Lcom/mediatek/op12/phone/Op12SCBMExitDialog$2;
.super Landroid/os/CountDownTimer;
.source "Op12SCBMExitDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->showSCBMExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/op12/phone/Op12SCBMExitDialog;
    .param p2, "arg0"    # J
    .param p4, "arg1"    # J

    .line 205
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$2;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 215
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .line 208
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$2;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-static {v0, p1, p2}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->access$300(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 209
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$2;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    iget-object v1, v1, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method
