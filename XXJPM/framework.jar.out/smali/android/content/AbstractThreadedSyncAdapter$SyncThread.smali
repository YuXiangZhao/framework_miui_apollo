.class Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
.super Ljava/lang/Thread;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncThread"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mExtras:Landroid/os/Bundle;

.field private final mSyncContext:Landroid/content/SyncContext;

.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "syncContext"
    .parameter "authority"
    .parameter "account"
    .parameter "extras"

    .prologue
    .line 143
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    .line 144
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 145
    iput-object p3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    .line 146
    iput-object p4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    .line 147
    iput-object p5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    .line 148
    iput-object p6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 136
    invoke-direct/range {p0 .. p6}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    return-object v0
.end method

.method private isCanceled()Z
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 152
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 154
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v5, Landroid/content/SyncResult;

    invoke-direct {v5}, Landroid/content/SyncResult;-><init>()V

    .line 159
    .local v5, syncResult:Landroid/content/SyncResult;
    const/4 v4, 0x0

    .line 161
    .local v4, provider:Landroid/content/ContentProviderClient;
    :try_start_0
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$700(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v4

    .line 162
    if-eqz v4, :cond_3

    .line 163
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/AbstractThreadedSyncAdapter;->onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    :goto_1
    if-eqz v4, :cond_1

    .line 170
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 172
    :cond_1
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v0, v5}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 177
    :cond_2
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$100(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 178
    :try_start_1
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/AbstractThreadedSyncAdapter;->access$202(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    .line 179
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 166
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, v5, Landroid/content/SyncResult;->databaseError:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 169
    :catchall_1
    move-exception v0

    if-eqz v4, :cond_4

    .line 170
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 172
    :cond_4
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 173
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v1, v5}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 177
    :cond_5
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$100(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_3
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/AbstractThreadedSyncAdapter;->access$202(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    .line 179
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 169
    throw v0

    .line 179
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
