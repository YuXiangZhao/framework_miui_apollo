.class Lcom/android/server/PowerManagerService$8;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2137
    iput-object p1, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2138
    iget-object v1, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 2139
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)F

    move-result v2

    float-to-int v0, v2

    .line 2140
    .local v0, value:I
    if-ltz v0, :cond_0

    .line 2141
    iget-object v2, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    const/high16 v3, -0x4080

    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$4802(Lcom/android/server/PowerManagerService;F)F

    .line 2142
    iget-object v2, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v2, v0}, Lcom/android/server/PowerManagerService;->access$4900(Lcom/android/server/PowerManagerService;I)V

    .line 2144
    :cond_0
    monitor-exit v1

    .line 2145
    return-void

    .line 2144
    .end local v0           #value:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
