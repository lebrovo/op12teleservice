.class public Lcom/mediatek/op12/phone/Op12SCBMService$LocalBinder;
.super Landroid/os/Binder;
.source "Op12SCBMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op12/phone/Op12SCBMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op12/phone/Op12SCBMService;


# direct methods
.method public constructor <init>(Lcom/mediatek/op12/phone/Op12SCBMService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/op12/phone/Op12SCBMService;

    .line 211
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12SCBMService$LocalBinder;->this$0:Lcom/mediatek/op12/phone/Op12SCBMService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/mediatek/op12/phone/Op12SCBMService;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService$LocalBinder;->this$0:Lcom/mediatek/op12/phone/Op12SCBMService;

    return-object v0
.end method
