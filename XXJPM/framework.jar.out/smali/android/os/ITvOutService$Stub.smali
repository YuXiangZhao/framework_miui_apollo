.class public abstract Landroid/os/ITvOutService$Stub;
.super Landroid/os/Binder;
.source "ITvOutService.java"

# interfaces
.implements Landroid/os/ITvOutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ITvOutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ITvOutService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ITvOutService"

.field static final TRANSACTION_CableConnected:I = 0x2

.field static final TRANSACTION_DisableTvOut:I = 0x5

.field static final TRANSACTION_DisableTvOutForce:I = 0x6

.field static final TRANSACTION_EnableTvOut:I = 0x3

.field static final TRANSACTION_EnableTvOutForce:I = 0x4

.field static final TRANSACTION_SetOrientation:I = 0x8

.field static final TRANSACTION_TvOutResume:I = 0xa

.field static final TRANSACTION_TvOutSetImage:I = 0xb

.field static final TRANSACTION_TvOutSuspend:I = 0x9

.field static final TRANSACTION_getIntent:I = 0x1

.field static final TRANSACTION_isEnabled:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ITvOutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ITvOutService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const-string v1, "android.os.ITvOutService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ITvOutService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/ITvOutService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/ITvOutService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ITvOutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "android.os.ITvOutService"

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v2, "android.os.ITvOutService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v2, "android.os.ITvOutService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->getIntent()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 52
    goto :goto_0

    .line 56
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v2, "android.os.ITvOutService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v3

    .line 59
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->CableConnected(Z)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 61
    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v5

    .line 58
    goto :goto_1

    .line 65
    :sswitch_3
    const-string v2, "android.os.ITvOutService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->EnableTvOut()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 68
    goto :goto_0

    .line 72
    :sswitch_4
    const-string v2, "android.os.ITvOutService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->EnableTvOutForce()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 75
    goto :goto_0

    .line 79
    :sswitch_5
    const-string v2, "android.os.ITvOutService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->DisableTvOut()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 82
    goto :goto_0

    .line 86
    :sswitch_6
    const-string v2, "android.os.ITvOutService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->DisableTvOutForce()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 89
    goto :goto_0

    .line 93
    :sswitch_7
    const-string v2, "android.os.ITvOutService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->isEnabled()Z

    move-result v1

    .line 95
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v1, :cond_1

    move v2, v3

    :goto_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 97
    goto :goto_0

    :cond_1
    move v2, v5

    .line 96
    goto :goto_2

    .line 101
    .end local v1           #_result:Z
    :sswitch_8
    const-string v2, "android.os.ITvOutService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->SetOrientation(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 106
    goto/16 :goto_0

    .line 110
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v2, "android.os.ITvOutService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvOutSuspend()V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 113
    goto/16 :goto_0

    .line 117
    :sswitch_a
    const-string v2, "android.os.ITvOutService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvOutResume()V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 120
    goto/16 :goto_0

    .line 124
    :sswitch_b
    const-string v2, "android.os.ITvOutService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvOutSetImage(I)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 129
    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
