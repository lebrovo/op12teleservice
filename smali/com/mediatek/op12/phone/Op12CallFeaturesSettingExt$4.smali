.class Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$4;
.super Ljava/lang/Object;
.source "Op12CallFeaturesSettingExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->handleDisabledPreferenceClick(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    .line 184
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$4;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    iput-object p2, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$4;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$4;->val$appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 189
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$4;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$500(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 190
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$4;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$500(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 191
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 193
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 194
    return-void
.end method
