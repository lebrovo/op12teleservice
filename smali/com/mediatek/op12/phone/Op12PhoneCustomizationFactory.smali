.class public Lcom/mediatek/op12/phone/Op12PhoneCustomizationFactory;
.super Lcom/mediatek/phone/ext/OpPhoneCustomizationFactoryBase;
.source "Op12PhoneCustomizationFactory.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/mediatek/phone/ext/OpPhoneCustomizationFactoryBase;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12PhoneCustomizationFactory;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public makeAccessibilitySettingsExt()Lcom/mediatek/phone/ext/IAccessibilitySettingsExt;
    .locals 2

    .line 26
    new-instance v0, Lcom/mediatek/op12/phone/Op12AccessibilitySettingsExt;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12PhoneCustomizationFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/op12/phone/Op12AccessibilitySettingsExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeCallFeaturesSettingExt()Lcom/mediatek/phone/ext/ICallFeaturesSettingExt;
    .locals 2

    .line 43
    const-string v0, "Op12PhoneCustomizationFactory: "

    const-string v1, "Op12CallFeaturesSettingExt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12PhoneCustomizationFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/op12/phone/Op12CallFeaturesSettingExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeEmergencyDialerExt()Lcom/mediatek/phone/ext/IEmergencyDialerExt;
    .locals 2

    .line 34
    const-string v0, "Op12EmergencyDialerExt"

    const-string v1, "makeEmergencyDialerExt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lcom/mediatek/op12/phone/Op12EmergencyDialerExt;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12PhoneCustomizationFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/op12/phone/Op12EmergencyDialerExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeSCBMHelperExt()Lcom/mediatek/phone/ext/ISCBMHelperExt;
    .locals 2

    .line 48
    const-string v0, "OP12PhoneCustomizationFactory"

    const-string v1, "makeSCBMHelperExt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Lcom/mediatek/op12/phone/Op12SCBMHelperExt;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12PhoneCustomizationFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/op12/phone/Op12SCBMHelperExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
