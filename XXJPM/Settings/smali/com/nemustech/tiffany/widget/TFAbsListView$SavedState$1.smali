.class Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState$1;
.super Ljava/lang/Object;
.source "TFAbsListView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 950
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;-><init>(Landroid/os/Parcel;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 953
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 954
    new-array v0, p1, [Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 953
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState$1;->newArray(I)[Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    move-result-object v0

    return-object v0
.end method
