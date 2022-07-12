.class public Lcom/mediatek/op12/phone/Op12SCBMHelperExt;
.super Lcom/mediatek/phone/ext/DefaultSCBMHelperExt;
.source "Op12SCBMHelperExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Op12SCBMHelperExt"


# instance fields
.field mContext:Landroid/content/Context;

.field private phoneInScm:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/mediatek/phone/ext/DefaultSCBMHelperExt;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12SCBMHelperExt;->mContext:Landroid/content/Context;

    .line 64
    const-string v0, "Op12SCBMHelperExt"

    const-string v1, "OP12SCBMHelperExt created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method


# virtual methods
.method public getPhoneInScm()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMHelperExt;->phoneInScm:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public handleSCBMChanged(Landroid/content/Context;IZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "isScmState"    # Z

    .line 68
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMHelperExt;->phoneInScm:Lcom/android/internal/telephony/Phone;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSCBMChanged. phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Op12SCBMHelperExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMHelperExt;->phoneInScm:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSCBMChanged. isScmState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz p3, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMHelperExt;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/op12/phone/Op12SCBMHelperExt;->mContext:Landroid/content/Context;

    const-class v3, Lcom/mediatek/op12/phone/Op12SCBMService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMHelperExt;->phoneInScm:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "phoneInScm is null."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void
.end method
