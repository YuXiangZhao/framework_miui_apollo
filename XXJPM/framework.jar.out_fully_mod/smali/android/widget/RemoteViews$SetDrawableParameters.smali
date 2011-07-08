.class Landroid/widget/RemoteViews$SetDrawableParameters;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDrawableParameters"
.end annotation


# static fields
.field public static final TAG:I = 0x3


# instance fields
.field alpha:I

.field colorFilter:I

.field filterMode:Landroid/graphics/PorterDuff$Mode;

.field level:I

.field targetBackground:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "targetBackground"
    .parameter "alpha"
    .parameter "colorFilter"
    .parameter "mode"
    .parameter "level"

    .prologue
    .line 190
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 191
    iput p2, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    .line 192
    iput-boolean p3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    .line 193
    iput p4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    .line 194
    iput p5, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    .line 195
    iput-object p6, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 196
    iput p7, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 5
    .parameter
    .parameter "parcel"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, v4}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 205
    .local v0, hasMode:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 210
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    .line 211
    return-void

    .end local v0           #hasMode:Z
    :cond_0
    move v1, v2

    .line 201
    goto :goto_0

    :cond_1
    move v0, v2

    .line 204
    goto :goto_1

    .line 208
    .restart local v0       #hasMode:Z
    :cond_2
    iput-object v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 7
    .parameter "root"

    .prologue
    const/4 v6, -0x1

    .line 230
    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 231
    .local v2, target:Landroid/view/View;
    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const/4 v3, 0x0

    .line 237
    .local v3, targetDrawable:Landroid/graphics/drawable/Drawable;
    iget-boolean v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    if-eqz v4, :cond_5

    .line 238
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 244
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 246
    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    if-eq v4, v6, :cond_3

    .line 247
    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 249
    :cond_3
    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    if-eq v4, v6, :cond_4

    iget-object v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_4

    .line 250
    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    iget-object v5, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 252
    :cond_4
    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    if-eq v4, v6, :cond_0

    .line 253
    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 239
    :cond_5
    instance-of v4, v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 240
    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 241
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 214
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    :goto_1
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    return-void

    :cond_0
    move v0, v1

    .line 216
    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
