.class Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5$1;
.super Ljava/lang/Object;
.source "Op12CallFeaturesSettingExt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;


# direct methods
.method constructor <init>(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;

    .line 207
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5$1;->this$1:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 210
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5$1;->this$1:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;

    iget-object v0, v0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v0}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$500(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5$1;->this$1:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;

    iget-object v0, v0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$5;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v0}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$600(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)V

    .line 212
    return-void
.end method
