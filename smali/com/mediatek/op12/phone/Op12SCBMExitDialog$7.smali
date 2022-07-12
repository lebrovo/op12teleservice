.class Lcom/mediatek/op12/phone/Op12SCBMExitDialog$7;
.super Ljava/lang/Object;
.source "Op12SCBMExitDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op12/phone/Op12SCBMExitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    .line 343
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$7;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 345
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$7;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    move-object v1, p2

    check-cast v1, Lcom/mediatek/op12/phone/Op12SCBMService$LocalBinder;

    invoke-virtual {v1}, Lcom/mediatek/op12/phone/Op12SCBMService$LocalBinder;->getService()Lcom/mediatek/op12/phone/Op12SCBMService;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mService:Lcom/mediatek/op12/phone/Op12SCBMService;

    .line 347
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$7;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$7;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 349
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 353
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$7;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mService:Lcom/mediatek/op12/phone/Op12SCBMService;

    .line 354
    return-void
.end method
