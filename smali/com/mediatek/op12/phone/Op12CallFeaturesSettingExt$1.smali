.class Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$1;
.super Landroid/content/BroadcastReceiver;
.source "Op12CallFeaturesSettingExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;


# direct methods
.method constructor <init>(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    .line 39
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$1;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive()... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Op12CallFeaturesSettingExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$1;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$000(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Lcom/android/phone/CallFeaturesSetting;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$1;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$100(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)V

    .line 47
    :cond_0
    return-void
.end method
