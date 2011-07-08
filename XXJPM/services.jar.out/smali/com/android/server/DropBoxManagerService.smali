.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/internal/os/IDropBoxManagerService$Stub;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private mLastTimestamp:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .parameter "context"
    .parameter "path"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 86
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 90
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 91
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 92
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 93
    iput-wide v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 96
    iput-wide v2, p0, Lcom/android/server/DropBoxManagerService;->mLastTimestamp:J

    .line 99
    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 131
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 133
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/DropBoxManagerService$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4, p1}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/DropBoxManagerService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)V
    .locals 22
    .parameter "temp"
    .parameter "tag"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 600
    .local v9, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v6, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v7, 0x2710

    add-long/2addr v7, v9

    invoke-direct {v6, v7, v8}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v21

    .line 601
    .local v21, tail:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v14, 0x0

    .line 602
    .local v14, future:[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 603
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    .end local v14           #future:[Lcom/android/server/DropBoxManagerService$EntryFile;
    check-cast v14, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 604
    .restart local v14       #future:[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v21 .. v21}, Ljava/util/SortedSet;->clear()V

    .line 607
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v5, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 611
    :cond_1
    if-eqz v14, :cond_4

    .line 612
    move-object v13, v14

    .local v13, arr$:[Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    aget-object v16, v13, v15

    .line 613
    .local v16, late:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move v7, v0

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    .line 615
    .local v20, tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v20, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 616
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move v6, v0

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 618
    :cond_2
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    .line 619
    new-instance v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object v7, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v8, v0

    const-wide/16 v11, 0x1

    add-long v18, v9, v11

    .end local v9           #t:J
    .local v18, t:J
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move v12, v0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v9, v18

    .line 612
    .end local v18           #t:J
    .restart local v9       #t:J
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 622
    :cond_3
    new-instance v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object v6, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v7, v0

    const-wide/16 v11, 0x1

    add-long v18, v9, v11

    .end local v9           #t:J
    .restart local v18       #t:J
    invoke-direct {v5, v6, v7, v9, v10}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v9, v18

    .end local v18           #t:J
    .restart local v9       #t:J
    goto :goto_1

    .line 627
    .end local v13           #arr$:[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v15           #i$:I
    .end local v16           #late:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v17           #len$:I
    .end local v20           #tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :cond_4
    if-nez p1, :cond_5

    .line 628
    new-instance v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-wide v3, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :goto_2
    monitor-exit p0

    return-void

    .line 630
    :cond_5
    :try_start_1
    new-instance v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move v12, v0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move/from16 v11, p3

    invoke-direct/range {v5 .. v12}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 594
    .end local v9           #t:J
    .end local v14           #future:[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v21           #tail:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .locals 4
    .parameter "entry"

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 581
    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v1, :cond_1

    .line 582
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 583
    .local v0, tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    .end local v0           #tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    .line 585
    .restart local v0       #tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_0
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 588
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    .end local v0           #tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :cond_1
    monitor-exit p0

    return-void

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized init()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "DropBoxManagerService"

    .line 531
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v7, :cond_1

    .line 532
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 533
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t mkdir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 536
    :cond_0
    :try_start_1
    new-instance v7, Landroid/os/StatFs;

    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 537
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    iput v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 543
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v7, :cond_6

    .line 544
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 545
    .local v4, files:[Ljava/io/File;
    if-nez v4, :cond_2

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t list files: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 538
    .end local v4           #files:[Ljava/io/File;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 539
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t statfs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 547
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v4       #files:[Ljava/io/File;
    :cond_2
    new-instance v7, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 548
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 551
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v3, v0, v5

    .line 552
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 553
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cleaning temp file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 551
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 558
    :cond_3
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v2, v3, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 559
    .local v2, entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 560
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 562
    :cond_4
    iget-wide v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 563
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 568
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 571
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_6
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized trimToFit()J
    .locals 28

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_age_seconds"

    const v25, 0x3f480

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 643
    .local v3, ageSeconds:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_max_files"

    const/16 v25, 0x3e8

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 645
    .local v10, maxFiles:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move v0, v3

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    sub-long v5, v23, v25

    .line 646
    .local v5, cutoffMillis:J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_1

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 648
    .local v8, entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object v0, v8

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v23, v0

    cmp-long v23, v23, v5

    if-lez v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->size()I

    move-result v23

    move/from16 v0, v23

    move v1, v10

    if-ge v0, v1, :cond_6

    .line 661
    .end local v8           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 662
    .local v21, uptimeMillis:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x1388

    add-long v23, v23, v25

    cmp-long v23, v21, v23

    if-lez v23, :cond_2

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_quota_percent"

    const/16 v25, 0xa

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 665
    .local v14, quotaPercent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_reserve_percent"

    const/16 v25, 0xa

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 667
    .local v15, reservePercent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_quota_kb"

    const/16 v25, 0x1400

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 670
    .local v13, quotaKb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    .line 672
    .local v4, available:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getBlockCount()I

    move-result v23

    mul-int v23, v23, v15

    div-int/lit8 v23, v23, 0x64

    sub-int v12, v4, v23

    .line 673
    .local v12, nonreserved:I
    move v0, v13

    mul-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v24, v0

    div-int v11, v23, v24

    .line 674
    .local v11, maximum:I
    const/16 v23, 0x0

    mul-int v24, v12, v14

    div-int/lit8 v24, v24, 0x64

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move v0, v11

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 675
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 692
    .end local v4           #available:I
    .end local v11           #maximum:I
    .end local v12           #nonreserved:I
    .end local v13           #quotaKb:I
    .end local v14           #quotaPercent:I
    .end local v15           #reservePercent:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    .line 693
    const-string v23, "DropBoxManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Usage ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") > Quota ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v20, v0

    .local v20, unsqueezed:I
    const/16 v16, 0x0

    .line 697
    .local v16, squeezed:I
    new-instance v19, Ljava/util/TreeSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 698
    .local v19, tags:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/DropBoxManagerService$FileList;

    .line 699
    .local v17, tag:Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v16, :cond_9

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v24, v0

    sub-int v24, v24, v20

    div-int v24, v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_9

    .line 705
    .end local v17           #tag:Lcom/android/server/DropBoxManagerService$FileList;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v20

    div-int v18, v23, v16

    .line 708
    .local v18, tagQuota:I
    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/DropBoxManagerService$FileList;

    .line 709
    .restart local v17       #tag:Lcom/android/server/DropBoxManagerService$FileList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 725
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v16           #squeezed:I
    .end local v17           #tag:Lcom/android/server/DropBoxManagerService$FileList;
    .end local v18           #tagQuota:I
    .end local v19           #tags:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v20           #unsqueezed:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    monitor-exit p0

    return-wide v23

    .line 650
    .end local v21           #uptimeMillis:J
    .restart local v8       #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/DropBoxManagerService$FileList;

    .line 651
    .restart local v17       #tag:Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v17, :cond_7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 652
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v24, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 653
    :cond_8
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 641
    .end local v3           #ageSeconds:I
    .end local v5           #cutoffMillis:J
    .end local v8           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v10           #maxFiles:I
    .end local v17           #tag:Lcom/android/server/DropBoxManagerService$FileList;
    :catchall_0
    move-exception v23

    monitor-exit p0

    throw v23

    .line 702
    .restart local v3       #ageSeconds:I
    .restart local v5       #cutoffMillis:J
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #maxFiles:I
    .restart local v16       #squeezed:I
    .restart local v17       #tag:Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v19       #tags:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .restart local v20       #unsqueezed:I
    .restart local v21       #uptimeMillis:J
    :cond_9
    :try_start_2
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    sub-int v20, v20, v23

    .line 703
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 710
    .restart local v18       #tagQuota:I
    :cond_a
    :goto_2
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_4

    .line 711
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 712
    .restart local v8       #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 713
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v24, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 716
    :cond_c
    :try_start_3
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 717
    :cond_d
    new-instance v23, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v24, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object v0, v8

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v26, v0

    invoke-direct/range {v23 .. v27}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 718
    :catch_0
    move-exception v23

    move-object/from16 v7, v23

    .line 719
    .local v7, e:Ljava/io/IOException;
    :try_start_4
    const-string v23, "DropBoxManagerService"

    const-string v24, "Can\'t write tombstone file"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .locals 27
    .parameter "entry"

    .prologue
    .line 153
    const/16 v21, 0x0

    .line 154
    .local v21, temp:Ljava/io/File;
    const/16 v17, 0x0

    .line 155
    .local v17, output:Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v20

    .line 157
    .local v20, tag:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v6

    .line 158
    .local v6, flags:I
    and-int/lit8 v23, v6, 0x1

    if-eqz v23, :cond_2

    new-instance v23, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v6           #flags:I
    :catch_0
    move-exception v23

    move-object/from16 v5, v23

    .line 217
    .local v5, e:Ljava/io/IOException;
    :goto_0
    :try_start_1
    const-string v23, "DropBoxManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Can\'t write: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    if-eqz v17, :cond_0

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 220
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 221
    if-eqz v21, :cond_1

    .end local v5           #e:Ljava/io/IOException;
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 223
    :cond_1
    return-void

    .line 160
    .restart local v6       #flags:I
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v23

    if-nez v23, :cond_4

    .line 219
    if-eqz v17, :cond_3

    :try_start_4
    throw v17
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 220
    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 221
    if-eqz v21, :cond_1

    goto :goto_2

    .line 162
    :cond_4
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v12

    .line 163
    .local v12, max:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 165
    .local v8, lastTrim:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object v4, v0

    .line 166
    .local v4, buffer:[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 171
    .local v7, input:Ljava/io/InputStream;
    const/16 v19, 0x0

    .line 172
    .local v19, read:I
    :goto_4
    move-object v0, v4

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 173
    move-object v0, v4

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v19

    move-object v0, v7

    move-object v1, v4

    move/from16 v2, v19

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    .line 174
    .local v14, n:I
    if-gtz v14, :cond_9

    .line 181
    .end local v14           #n:I
    :cond_5
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "drop"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->getId()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".tmp"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 182
    .end local v21           #temp:Ljava/io/File;
    .local v22, temp:Ljava/io/File;
    :try_start_6
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 183
    .end local v17           #output:Ljava/io/OutputStream;
    .local v18, output:Ljava/io/OutputStream;
    :try_start_7
    move-object v0, v4

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    and-int/lit8 v23, v6, 0x4

    if-nez v23, :cond_e

    .line 184
    new-instance v17, Ljava/util/zip/GZIPOutputStream;

    invoke-direct/range {v17 .. v18}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 185
    .end local v18           #output:Ljava/io/OutputStream;
    .restart local v17       #output:Ljava/io/OutputStream;
    or-int/lit8 v6, v6, 0x4

    .line 189
    :cond_6
    :goto_5
    const/16 v23, 0x0

    :try_start_8
    move-object/from16 v0, v17

    move-object v1, v4

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 192
    .local v15, now:J
    sub-long v23, v15, v8

    const-wide/16 v25, 0x7530

    cmp-long v23, v23, v25

    if-lez v23, :cond_7

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v12

    .line 194
    move-wide v8, v15

    .line 197
    :cond_7
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v19

    .line 198
    if-gtz v19, :cond_a

    .line 199
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 200
    const/16 v17, 0x0

    .line 205
    :goto_6
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 206
    .local v10, len:J
    cmp-long v23, v10, v12

    if-lez v23, :cond_b

    .line 207
    const-string v23, "DropBoxManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Dropping: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " > "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bytes)"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 209
    const/16 v21, 0x0

    .line 214
    .end local v22           #temp:Ljava/io/File;
    .restart local v21       #temp:Ljava/io/File;
    :goto_7
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 215
    const/16 v21, 0x0

    .line 219
    if-eqz v17, :cond_8

    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 220
    :cond_8
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 221
    if-eqz v21, :cond_1

    goto/16 :goto_2

    .line 175
    .end local v10           #len:J
    .end local v15           #now:J
    .restart local v14       #n:I
    :cond_9
    add-int v19, v19, v14

    .line 176
    goto/16 :goto_4

    .line 202
    .end local v14           #n:I
    .end local v21           #temp:Ljava/io/File;
    .restart local v15       #now:J
    .restart local v22       #temp:Ljava/io/File;
    :cond_a
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_6

    .line 216
    .end local v15           #now:J
    :catch_1
    move-exception v23

    move-object/from16 v5, v23

    move-object/from16 v21, v22

    .end local v22           #temp:Ljava/io/File;
    .restart local v21       #temp:Ljava/io/File;
    goto/16 :goto_0

    .line 212
    .end local v21           #temp:Ljava/io/File;
    .restart local v10       #len:J
    .restart local v15       #now:J
    .restart local v22       #temp:Ljava/io/File;
    :cond_b
    if-gtz v19, :cond_6

    move-object/from16 v21, v22

    .end local v22           #temp:Ljava/io/File;
    .restart local v21       #temp:Ljava/io/File;
    goto :goto_7

    .line 219
    .end local v4           #buffer:[B
    .end local v6           #flags:I
    .end local v7           #input:Ljava/io/InputStream;
    .end local v8           #lastTrim:J
    .end local v10           #len:J
    .end local v12           #max:J
    .end local v15           #now:J
    .end local v19           #read:I
    :catchall_0
    move-exception v23

    :goto_9
    if-eqz v17, :cond_c

    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 220
    :cond_c
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 221
    if-eqz v21, :cond_d

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 219
    :cond_d
    throw v23

    :catch_2
    move-exception v24

    goto :goto_a

    .restart local v5       #e:Ljava/io/IOException;
    :catch_3
    move-exception v23

    goto/16 :goto_1

    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #flags:I
    :catch_4
    move-exception v23

    goto/16 :goto_3

    .restart local v4       #buffer:[B
    .restart local v7       #input:Ljava/io/InputStream;
    .restart local v8       #lastTrim:J
    .restart local v10       #len:J
    .restart local v12       #max:J
    .restart local v15       #now:J
    .restart local v19       #read:I
    :catch_5
    move-exception v23

    goto :goto_8

    .end local v10           #len:J
    .end local v15           #now:J
    .end local v21           #temp:Ljava/io/File;
    .restart local v22       #temp:Ljava/io/File;
    :catchall_1
    move-exception v23

    move-object/from16 v21, v22

    .end local v22           #temp:Ljava/io/File;
    .restart local v21       #temp:Ljava/io/File;
    goto :goto_9

    .end local v17           #output:Ljava/io/OutputStream;
    .end local v21           #temp:Ljava/io/File;
    .restart local v18       #output:Ljava/io/OutputStream;
    .restart local v22       #temp:Ljava/io/File;
    :catchall_2
    move-exception v23

    move-object/from16 v17, v18

    .end local v18           #output:Ljava/io/OutputStream;
    .restart local v17       #output:Ljava/io/OutputStream;
    move-object/from16 v21, v22

    .end local v22           #temp:Ljava/io/File;
    .restart local v21       #temp:Ljava/io/File;
    goto :goto_9

    .line 216
    .end local v17           #output:Ljava/io/OutputStream;
    .end local v21           #temp:Ljava/io/File;
    .restart local v18       #output:Ljava/io/OutputStream;
    .restart local v22       #temp:Ljava/io/File;
    :catch_6
    move-exception v23

    move-object/from16 v5, v23

    move-object/from16 v17, v18

    .end local v18           #output:Ljava/io/OutputStream;
    .restart local v17       #output:Ljava/io/OutputStream;
    move-object/from16 v21, v22

    .end local v22           #temp:Ljava/io/File;
    .restart local v21       #temp:Ljava/io/File;
    goto/16 :goto_0

    .end local v17           #output:Ljava/io/OutputStream;
    .end local v21           #temp:Ljava/io/File;
    .restart local v18       #output:Ljava/io/OutputStream;
    .restart local v22       #temp:Ljava/io/File;
    :cond_e
    move-object/from16 v17, v18

    .end local v18           #output:Ljava/io/OutputStream;
    .restart local v17       #output:Ljava/io/OutputStream;
    goto/16 :goto_5
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 32
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 266
    const-string v5, "Permission Denial: Can\'t dump DropBoxManagerService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :goto_0
    monitor-exit p0

    return-void

    .line 271
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    :try_start_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v26, out:Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .local v16, doPrint:Z
    const/4 v15, 0x0

    .line 282
    .local v15, doFile:Z
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v28, searchArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    array-length v0, v0

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 284
    aget-object v5, p3, v19

    const-string v6, "-p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, p3, v19

    const-string v6, "--print"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 285
    :cond_1
    const/16 v16, 0x1

    .line 283
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 272
    .end local v15           #doFile:Z
    .end local v16           #doPrint:Z
    .end local v19           #i:I
    .end local v26           #out:Ljava/lang/StringBuilder;
    .end local v28           #searchArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v17

    .line 273
    .local v17, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t initialize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    const-string v5, "DropBoxManagerService"

    const-string v6, "Can\'t init"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 264
    .end local v17           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 286
    .restart local v15       #doFile:Z
    .restart local v16       #doPrint:Z
    .restart local v19       #i:I
    .restart local v26       #out:Ljava/lang/StringBuilder;
    .restart local v28       #searchArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    aget-object v5, p3, v19

    const-string v6, "-f"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, p3, v19

    const-string v6, "--file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 287
    :cond_3
    const/4 v15, 0x1

    goto :goto_2

    .line 288
    :cond_4
    aget-object v5, p3, v19

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 289
    const-string v5, "Unknown argument: "

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p3, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 291
    :cond_5
    aget-object v5, p3, v19

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 295
    :cond_6
    const-string v5, "Drop box contents: "

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " entries\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 298
    const-string v5, "Searching for:"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, a:Ljava/lang/String;
    const-string v5, " "

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 300
    .end local v10           #a:Ljava/lang/String;
    :cond_7
    const-string v5, "\n"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .end local v20           #i$:Ljava/util/Iterator;
    :cond_8
    const/16 v25, 0x0

    .local v25, numFound:I
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 304
    .local v24, numArgs:I
    new-instance v30, Landroid/text/format/Time;

    invoke-direct/range {v30 .. v30}, Landroid/text/format/Time;-><init>()V

    .line 305
    .local v30, time:Landroid/text/format/Time;
    const-string v5, "\n"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 307
    .local v18, entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide v5, v0

    move-object/from16 v0, v30

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 308
    const-string v5, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 309
    .local v13, date:Ljava/lang/String;
    const/16 v21, 0x1

    .line 310
    .local v21, match:Z
    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    if-eqz v21, :cond_c

    .line 311
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 312
    .local v11, arg:Ljava/lang/String;
    invoke-virtual {v13, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    const/4 v5, 0x1

    move/from16 v21, v5

    .line 310
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 312
    :cond_b
    const/4 v5, 0x0

    move/from16 v21, v5

    goto :goto_6

    .line 314
    .end local v11           #arg:Ljava/lang/String;
    :cond_c
    if-eqz v21, :cond_9

    .line 316
    add-int/lit8 v25, v25, 0x1

    .line 317
    if-eqz v16, :cond_d

    const-string v5, "========================================\n"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_d
    move-object/from16 v0, v26

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v6, v0

    if-nez v6, :cond_e

    const-string v6, "(no tag)"

    :goto_7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object v5, v0

    if-nez v5, :cond_f

    .line 320
    const-string v5, " (no file)\n"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 318
    :cond_e
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v6, v0

    goto :goto_7

    .line 322
    :cond_f
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_10

    .line 323
    const-string v5, " (contents lost)\n"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 326
    :cond_10
    const-string v5, " ("

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_11

    const-string v5, "compressed "

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_11
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_19

    const-string v5, "text"

    :goto_8
    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v5, ", "

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes)\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    if-nez v15, :cond_12

    if-eqz v16, :cond_14

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_14

    .line 333
    :cond_12
    if-nez v16, :cond_13

    const-string v5, "    "

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_13
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_14
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v5, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_18

    if-nez v16, :cond_15

    if-nez v15, :cond_18

    .line 338
    :cond_15
    const/4 v14, 0x0

    .line 340
    .local v14, dbe:Landroid/os/DropBoxManager$Entry;
    :try_start_4
    new-instance v4, Landroid/os/DropBoxManager$Entry;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide v6, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object v8, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move v9, v0

    invoke-direct/range {v4 .. v9}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 343
    .end local v14           #dbe:Landroid/os/DropBoxManager$Entry;
    .local v4, dbe:Landroid/os/DropBoxManager$Entry;
    if-eqz v16, :cond_1c

    .line 344
    :try_start_5
    new-instance v27, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 345
    .local v27, r:Ljava/io/InputStreamReader;
    const/16 v5, 0x1000

    new-array v12, v5, [C

    .line 346
    .local v12, buf:[C
    const/16 v23, 0x0

    .line 348
    .local v23, newline:Z
    :cond_16
    :goto_9
    move-object/from16 v0, v27

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v22

    .line 349
    .local v22, n:I
    if-gtz v22, :cond_1a

    .line 359
    if-nez v23, :cond_17

    const-string v5, "\n"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 371
    .end local v12           #buf:[C
    .end local v22           #n:I
    .end local v23           #newline:Z
    .end local v27           #r:Ljava/io/InputStreamReader;
    :cond_17
    :goto_a
    if-eqz v4, :cond_18

    :try_start_6
    invoke-virtual {v4}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 375
    .end local v4           #dbe:Landroid/os/DropBoxManager$Entry;
    :cond_18
    :goto_b
    if-eqz v16, :cond_9

    const-string v5, "\n"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 328
    :cond_19
    const-string v5, "data"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_8

    .line 350
    .restart local v4       #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v12       #buf:[C
    .restart local v22       #n:I
    .restart local v23       #newline:Z
    .restart local v27       #r:Ljava/io/InputStreamReader;
    :cond_1a
    const/4 v5, 0x0

    :try_start_7
    move-object/from16 v0, v26

    move-object v1, v12

    move v2, v5

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 351
    const/4 v5, 0x1

    sub-int v5, v22, v5

    aget-char v5, v12, v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1b

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 354
    :goto_c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/high16 v6, 0x1

    if-le v5, v6, :cond_16

    .line 355
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 356
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_9

    .line 367
    .end local v12           #buf:[C
    .end local v22           #n:I
    .end local v23           #newline:Z
    .end local v27           #r:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v5

    move-object/from16 v17, v5

    .line 368
    .restart local v17       #e:Ljava/io/IOException;
    :goto_d
    :try_start_8
    const-string v5, "*** "

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v5, "DropBoxManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 371
    if-eqz v4, :cond_18

    :try_start_9
    invoke-virtual {v4}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_b

    .line 351
    .end local v17           #e:Ljava/io/IOException;
    .restart local v12       #buf:[C
    .restart local v22       #n:I
    .restart local v23       #newline:Z
    .restart local v27       #r:Ljava/io/InputStreamReader;
    :cond_1b
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_c

    .line 361
    .end local v12           #buf:[C
    .end local v22           #n:I
    .end local v23           #newline:Z
    .end local v27           #r:Ljava/io/InputStreamReader;
    :cond_1c
    const/16 v5, 0x46

    :try_start_a
    invoke-virtual {v4, v5}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v29

    .line 362
    .local v29, text:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x46

    if-ne v5, v6, :cond_1f

    const/4 v5, 0x1

    move/from16 v31, v5

    .line 363
    .local v31, truncated:Z
    :goto_e
    const-string v5, "    "

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    if-eqz v31, :cond_1d

    const-string v5, " ..."

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_1d
    const-string v5, "\n"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_a

    .line 371
    .end local v29           #text:Ljava/lang/String;
    .end local v31           #truncated:Z
    :catchall_1
    move-exception v5

    :goto_f
    if-eqz v4, :cond_1e

    :try_start_b
    invoke-virtual {v4}, Landroid/os/DropBoxManager$Entry;->close()V

    :cond_1e
    throw v5

    .line 362
    .restart local v29       #text:Ljava/lang/String;
    :cond_1f
    const/4 v5, 0x0

    move/from16 v31, v5

    goto :goto_e

    .line 378
    .end local v4           #dbe:Landroid/os/DropBoxManager$Entry;
    .end local v13           #date:Ljava/lang/String;
    .end local v18           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v21           #match:Z
    .end local v29           #text:Ljava/lang/String;
    :cond_20
    if-nez v25, :cond_21

    const-string v5, "(No entries found.)\n"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_21
    if-eqz p3, :cond_22

    move-object/from16 v0, p3

    array-length v0, v0

    move v5, v0

    if-nez v5, :cond_24

    .line 381
    :cond_22
    if-nez v16, :cond_23

    const-string v5, "\n"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_23
    const-string v5, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_24
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 371
    .restart local v13       #date:Ljava/lang/String;
    .restart local v14       #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v18       #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v21       #match:Z
    :catchall_2
    move-exception v5

    move-object v4, v14

    .end local v14           #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v4       #dbe:Landroid/os/DropBoxManager$Entry;
    goto :goto_f

    .line 367
    .end local v4           #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v14       #dbe:Landroid/os/DropBoxManager$Entry;
    :catch_2
    move-exception v5

    move-object/from16 v17, v5

    move-object v4, v14

    .end local v14           #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v4       #dbe:Landroid/os/DropBoxManager$Entry;
    goto/16 :goto_d
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 11
    .parameter "tag"
    .parameter "millis"

    .prologue
    const/4 v10, 0x0

    const-string v0, "DropBoxManagerService"

    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 237
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    if-nez p1, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v0

    .line 244
    .local v9, list:Lcom/android/server/DropBoxManagerService$FileList;
    :goto_0
    if-nez v9, :cond_2

    move-object v0, v10

    .line 260
    .end local v9           #list:Lcom/android/server/DropBoxManagerService$FileList;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 238
    :catch_0
    move-exception v6

    .line 239
    .local v6, e:Ljava/io/IOException;
    :try_start_3
    const-string v0, "DropBoxManagerService"

    const-string v1, "Can\'t init"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v10

    .line 240
    goto :goto_1

    .line 243
    .end local v6           #e:Ljava/io/IOException;
    :cond_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v9, v0

    goto :goto_0

    .line 246
    .restart local v9       #list:Lcom/android/server/DropBoxManagerService$FileList;
    :cond_2
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 247
    .local v7, entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 248
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 249
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v1, v2, v3}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 252
    :cond_4
    :try_start_4
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-object v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget v5, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 254
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 255
    .restart local v6       #e:Ljava/io/IOException;
    :try_start_5
    const-string v0, "DropBoxManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_5
    move-object v0, v10

    .line 260
    goto :goto_1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "tag"

    .prologue
    .line 226
    const-string v0, "disabled"

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropbox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    return-void
.end method
