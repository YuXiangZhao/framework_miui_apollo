.class public Lcom/broadcom/bt/service/bpp/BipParameters;
.super Ljava/lang/Object;
.source "BipParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BipParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Encoding:[B

.field public Pixel:Lcom/broadcom/bt/service/bpp/BipPixel;

.field public Size:I

.field public Transform:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/broadcom/bt/service/bpp/BipParameters$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BipParameters$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BipParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(ILcom/broadcom/bt/service/bpp/BipPixel;[BI)V
    .locals 0
    .parameter "size"
    .parameter "pixel"
    .parameter "encoding"
    .parameter "transform"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Size:I

    .line 99
    iput-object p2, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Pixel:Lcom/broadcom/bt/service/bpp/BipPixel;

    .line 100
    iput-object p3, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    .line 101
    iput p4, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Transform:I

    .line 102
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BipParameters;->readFromParcel(Landroid/os/Parcel;)V

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BipParameters$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BipParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Size:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, temp:I
    if-eqz v0, :cond_0

    .line 140
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    .line 141
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 145
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/bpp/BipPixel;

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Pixel:Lcom/broadcom/bt/service/bpp/BipPixel;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Transform:I

    .line 147
    return-void

    .line 143
    :cond_0
    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 118
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Pixel:Lcom/broadcom/bt/service/bpp/BipPixel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Transform:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
