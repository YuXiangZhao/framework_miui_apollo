.class Lcom/android/server/UiModeManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService$1;->getResultCode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 188
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v3, "enableFlags"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 130
    .local v18, enableFlags:I
    const-string v3, "disableFlags"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 132
    .local v16, disableFlags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 134
    const/4 v15, 0x0

    .line 135
    .local v15, category:Ljava/lang/String;
    :try_start_0
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 138
    and-int/lit8 v3, v18, 0x1

    if-eqz v3, :cond_1

    .line 139
    const-string v15, "android.intent.category.CAR_DOCK"

    .line 155
    :cond_1
    :goto_1
    if-eqz v15, :cond_3

    .line 158
    invoke-static {v15}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 167
    .local v5, homeIntent:Landroid/content/Intent;
    const/4 v14, 0x0

    .line 168
    .local v14, newConfig:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/UiModeManagerService;->access$002(Lcom/android/server/UiModeManagerService;Z)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked(Z)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$100(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 174
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/content/res/Configuration;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/UiModeManagerService;->access$002(Lcom/android/server/UiModeManagerService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    .end local v5           #homeIntent:Landroid/content/Intent;
    .end local v14           #newConfig:Landroid/content/res/Configuration;
    :cond_3
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/UiModeManagerService;->access$002(Lcom/android/server/UiModeManagerService;Z)Z

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked(Z)V

    .line 187
    :cond_4
    monitor-exit v19

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 141
    :cond_5
    :try_start_3
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 145
    and-int/lit8 v3, v18, 0x1

    if-eqz v3, :cond_1

    .line 146
    const-string v15, "android.intent.category.DESK_DOCK"

    goto :goto_1

    .line 150
    :cond_6
    and-int/lit8 v3, v16, 0x1

    if-eqz v3, :cond_1

    .line 151
    const-string v15, "android.intent.category.HOME"

    goto/16 :goto_1

    .line 178
    .restart local v5       #homeIntent:Landroid/content/Intent;
    .restart local v14       #newConfig:Landroid/content/res/Configuration;
    :catch_0
    move-exception v3

    move-object/from16 v17, v3

    .line 179
    .local v17, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method