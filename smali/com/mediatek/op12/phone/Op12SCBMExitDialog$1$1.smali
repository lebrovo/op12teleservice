.class Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1$1;
.super Ljava/lang/Object;
.source "Op12SCBMExitDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;


# direct methods
.method constructor <init>(Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;

    .line 178
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1$1;->this$1:Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1$1;->this$1:Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;

    iget-object v0, v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-static {v0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->access$200(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)V

    .line 181
    return-void
.end method
