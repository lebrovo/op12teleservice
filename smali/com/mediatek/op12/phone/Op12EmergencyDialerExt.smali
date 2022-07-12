.class public Lcom/mediatek/op12/phone/Op12EmergencyDialerExt;
.super Lcom/mediatek/phone/ext/DefaultEmergencyDialerExt;
.source "Op12EmergencyDialerExt.java"


# static fields
.field public static final EXIT_ECM_DIALOG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Op12EmergencyDialerExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Lcom/mediatek/phone/ext/DefaultEmergencyDialerExt;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12EmergencyDialerExt;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public getDialogText(Ljava/lang/Object;IJ)Ljava/lang/String;
    .locals 11
    .param p1, "phoneObj"    # Ljava/lang/Object;
    .param p2, "dialogType"    # I
    .param p3, "millisUntilFinished"    # J

    .line 30
    const-string v0, "Op12EmergencyDialerExt"

    const-string v1, "getDialogText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v1, 0x0

    .line 33
    .local v1, "dialogMsg":Ljava/lang/String;
    const-wide/32 v2, 0xea60

    div-long v4, p3, v2

    long-to-int v4, v4

    .line 34
    .local v4, "minutes":I
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    rem-long v2, p3, v2

    const-wide/16 v9, 0x3e8

    div-long/2addr v2, v9

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    .line 34
    const-string v2, "%d:%02d"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "time":Ljava/lang/String;
    const/4 v6, 0x0

    .line 37
    .local v6, "ecc_ims":Z
    nop

    .line 38
    const-string v7, "phoneEx"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 37
    invoke-static {v7}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v7

    .line 39
    .local v7, "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v7, :cond_2

    .line 41
    :try_start_0
    invoke-interface {v7}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getIsLastEccIms()Z

    move-result v9

    move v6, v9

    .line 42
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Last ECC call on IMS:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz v6, :cond_1

    .line 44
    if-eq p2, v5, :cond_0

    .line 50
    const/4 v1, 0x0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v5, p0, Lcom/mediatek/op12/phone/Op12EmergencyDialerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v9, 0x7f020000

    invoke-virtual {v5, v9, v4}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 47
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v8

    .line 46
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 55
    :cond_1
    :goto_0
    goto :goto_1

    .line 53
    :catch_0
    move-exception v3

    .line 54
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "RemoteException getIsLastEccIms()"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ECBM dialogMsg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-object v1
.end method
