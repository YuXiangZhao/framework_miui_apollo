package com.android.launcher2; class Workspace$WorkspaceThumbnailViewAdapter$6 {/*

.class Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 1220
    #v2=(Null);
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/WorkspaceThumbnailView;

    move-result-object v0

    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceThumbnailView;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Workspace;->access$1700(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V

    .line 1222
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->setSlideBarVisibility(I)V

    .line 1223
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1216
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x7

    #v2=(PosByte);
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V

    .line 1212
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 1213
    return-void
.end method

*/}
