.class Lcom/nemustech/tiffany/world/TFView$SimpleEGLConfigChooser;
.super Lcom/nemustech/tiffany/world/TFView$ComponentSizeChooser;
.source "TFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleEGLConfigChooser"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 8
    .parameter "withDepthBuffer"

    .prologue
    const/4 v7, 0x5

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 838
    if-eqz p1, :cond_0

    const/16 v0, 0x10

    move v5, v0

    :goto_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/nemustech/tiffany/world/TFView$ComponentSizeChooser;-><init>(IIIIII)V

    .line 841
    iput v7, p0, Lcom/nemustech/tiffany/world/TFView$SimpleEGLConfigChooser;->mRedSize:I

    .line 842
    const/4 v0, 0x6

    iput v0, p0, Lcom/nemustech/tiffany/world/TFView$SimpleEGLConfigChooser;->mGreenSize:I

    .line 843
    iput v7, p0, Lcom/nemustech/tiffany/world/TFView$SimpleEGLConfigChooser;->mBlueSize:I

    .line 844
    return-void

    :cond_0
    move v5, v4

    .line 838
    goto :goto_0
.end method
