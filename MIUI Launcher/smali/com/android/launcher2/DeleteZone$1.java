package com.android.launcher2; class DeleteZone$1 {/*

.class Lcom/android/launcher2/DeleteZone$1;
.super Ljava/lang/Object;
.source "DeleteZone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeleteZone;->startUninstallDialog(Lcom/android/launcher2/ShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeleteZone;

.field final synthetic val$info:Lcom/android/launcher2/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeleteZone;Lcom/android/launcher2/ShortcutInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/launcher2/DeleteZone$1;->this$0:Lcom/android/launcher2/DeleteZone;

    iput-object p2, p0, Lcom/android/launcher2/DeleteZone$1;->val$info:Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone$1;->this$0:Lcom/android/launcher2/DeleteZone;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/DeleteZone;->access$000(Lcom/android/launcher2/DeleteZone;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone$1;->val$info:Lcom/android/launcher2/ShortcutInfo;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->addItem(Lcom/android/launcher2/ItemInfo;Z)V

    .line 175
    return-void
.end method

*/}
