.class Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$2;
.super Ljava/lang/Object;
.source "Op12CallFeaturesSettingExt.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;-><init>(Landroid/content/Context;)V
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

    .line 56
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$2;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt$2;->this$0:Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    invoke-static {v0}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$000(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;)Lcom/android/phone/CallFeaturesSetting;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;->access$200(Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x0

    return v0
.end method
