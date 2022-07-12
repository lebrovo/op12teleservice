.class Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$3;
.super Landroid/os/CountDownTimer;
.source "Op12CallFeaturesSettingExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->restoreVideoPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

.field final synthetic val$prefScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;JJLandroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;
    .param p2, "arg0"    # J
    .param p4, "arg1"    # J

    .line 163
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$3;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    iput-object p6, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$3;->val$prefScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$3;->val$prefScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$3;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$300(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Lcom/mediatek/op12/phone/DisabledAppearancePreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$3;->val$prefScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$3;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$400(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 170
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$3;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v0}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$500(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KEY_CALL_OPTIONS"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 172
    .local v0, "videoCalling":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreVideoPreference: videoCalling preference value restored:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Op12CallFeaturesSettingExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$3;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$400(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 175
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .line 165
    const-string v0, "Op12CallFeaturesSettingExt"

    const-string v1, "Timer started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method
