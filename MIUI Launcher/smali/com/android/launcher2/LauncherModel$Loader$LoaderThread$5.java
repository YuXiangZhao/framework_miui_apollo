package com.android.launcher2; class LauncherModel$Loader$LoaderThread$5 {/*

.class Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

.field final synthetic val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;->this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;->this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1077
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 1078
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->startBinding()V

    .line 1080
    :cond_0
    return-void
.end method

*/}
