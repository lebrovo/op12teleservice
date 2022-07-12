.class Lcom/mediatek/op12/phone/Op12SCBMService$2;
.super Landroid/os/CountDownTimer;
.source "Op12SCBMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/op12/phone/Op12SCBMService;->startTimerNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op12/phone/Op12SCBMService;


# direct methods
.method constructor <init>(Lcom/mediatek/op12/phone/Op12SCBMService;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/op12/phone/Op12SCBMService;
    .param p2, "arg0"    # J
    .param p4, "arg1"    # J

    .line 137
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12SCBMService$2;->this$0:Lcom/mediatek/op12/phone/Op12SCBMService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 147
    return-void
.end method

.method public onTick(J)V
    .locals 1
    .param p1, "millisUntilFinished"    # J

    .line 141
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMService$2;->this$0:Lcom/mediatek/op12/phone/Op12SCBMService;

    invoke-static {v0, p1, p2}, Lcom/mediatek/op12/phone/Op12SCBMService;->access$002(Lcom/mediatek/op12/phone/Op12SCBMService;J)J

    .line 142
    return-void
.end method
