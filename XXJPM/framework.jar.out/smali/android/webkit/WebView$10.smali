.class Landroid/webkit/WebView$10;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 6164
    iput-object p1, p0, Landroid/webkit/WebView$10;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 6166
    iget-object v0, p0, Landroid/webkit/WebView$10;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView$10;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$3400(Landroid/webkit/WebView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6167
    iget-object v0, p0, Landroid/webkit/WebView$10;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView$10;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$3400(Landroid/webkit/WebView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/webkit/WebView;->access$3500()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6169
    iget-object v0, p0, Landroid/webkit/WebView$10;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    .line 6170
    return-void
.end method
