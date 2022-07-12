.class Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;
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

    .line 199
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    iput-object p2, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 202
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;->val$appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 204
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$500(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 205
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$500(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 206
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$500(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5$1;

    invoke-direct {v2, p0}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5$1;-><init>(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 216
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 217
    return-void
.end method
