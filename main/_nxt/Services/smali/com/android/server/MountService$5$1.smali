.class Lcom/android/server/MountService$5$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$5;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$5;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lcom/android/server/MountService$5$1;->this$1:Lcom/android/server/MountService$5;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 988
    # getter for: Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/MountService;->access$2900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 990
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$5$1;->this$1:Lcom/android/server/MountService$5;

    iget-object v1, v1, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/MountService;->enableUSBFuction(Z)V
    invoke-static {v1, v3}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 995
    return-void

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v3, "USB enable exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 994
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
