.class Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;
.super Ljava/lang/Object;
.source "Op12SCBMExitDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 142
    iput-object p1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 144
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 147
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    const-class v3, Lcom/mediatek/op12/phone/Op12SCBMService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    .line 148
    invoke-static {v2}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->access$000(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)Landroid/content/ServiceConnection;

    move-result-object v2

    .line 147
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 151
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    iget-object v1, v1, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mService:Lcom/mediatek/op12/phone/Op12SCBMService;

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    goto :goto_0

    .line 161
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "SCM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Op12SCBMExitDialog InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 161
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    iget-object v0, v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mService:Lcom/mediatek/op12/phone/Op12SCBMService;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    iget-object v1, v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mService:Lcom/mediatek/op12/phone/Op12SCBMService;

    invoke-virtual {v1}, Lcom/mediatek/op12/phone/Op12SCBMService;->getSCBMTimeout()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mScmTimeout:J

    .line 166
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    iget-object v1, v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mService:Lcom/mediatek/op12/phone/Op12SCBMService;

    invoke-virtual {v1}, Lcom/mediatek/op12/phone/Op12SCBMService;->getSCBMState()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->access$102(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;Z)Z

    .line 169
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    iget-object v1, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    invoke-static {v1}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->access$000(Lcom/mediatek/op12/phone/Op12SCBMExitDialog;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 174
    goto :goto_1

    .line 170
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SCBMDialog"

    const-string v2, "Failed to unbind from Op12SCBMService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;->this$0:Lcom/mediatek/op12/phone/Op12SCBMExitDialog;

    iget-object v0, v0, Lcom/mediatek/op12/phone/Op12SCBMExitDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1$1;

    invoke-direct {v1, p0}, Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1$1;-><init>(Lcom/mediatek/op12/phone/Op12SCBMExitDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void

    .line 161
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
