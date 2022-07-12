.class Lcom/mediatek/op12/phone/Op12SCBMExitDialog$3;
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

    .line 248
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$3;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 251
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$3;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "exit_scm_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->setResult(ILandroid/content/Intent;)V

    .line 253
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$3;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-virtual {v0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->finish()V

    .line 254
    return-void
.end method
