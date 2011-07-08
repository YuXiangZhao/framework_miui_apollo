.class public Lcom/android/internal/location/GeocoderProxy;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/GeocoderProxy$1;,
        Lcom/android/internal/location/GeocoderProxy$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GeocoderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mProvider:Landroid/location/IGeocodeProvider;

.field private final mServiceConnection:Lcom/android/internal/location/GeocoderProxy$Connection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "serviceName"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/internal/location/GeocoderProxy$Connection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/GeocoderProxy$Connection;-><init>(Lcom/android/internal/location/GeocoderProxy;Lcom/android/internal/location/GeocoderProxy$1;)V

    iput-object v0, p0, Lcom/android/internal/location/GeocoderProxy;->mServiceConnection:Lcom/android/internal/location/GeocoderProxy$Connection;

    .line 48
    iput-object p1, p0, Lcom/android/internal/location/GeocoderProxy;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/location/GeocoderProxy;->mIntent:Landroid/content/Intent;

    .line 50
    iget-object v0, p0, Lcom/android/internal/location/GeocoderProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/location/GeocoderProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/location/GeocoderProxy;->mServiceConnection:Lcom/android/internal/location/GeocoderProxy$Connection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 51
    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/location/GeocoderProxy;Landroid/location/IGeocodeProvider;)Landroid/location/IGeocodeProvider;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/location/GeocoderProxy;->mProvider:Landroid/location/IGeocodeProvider;

    return-object p1
.end method


# virtual methods
.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 72
    .local p7, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v1, p0, Lcom/android/internal/location/GeocoderProxy;->mServiceConnection:Lcom/android/internal/location/GeocoderProxy$Connection;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/GeocoderProxy;->mProvider:Landroid/location/IGeocodeProvider;

    .line 74
    .local v0, provider:Landroid/location/IGeocodeProvider;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 77
    :try_start_1
    invoke-interface/range {v0 .. v7}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 74
    .end local v0           #provider:Landroid/location/IGeocodeProvider;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 79
    .restart local v0       #provider:Landroid/location/IGeocodeProvider;
    :catch_0
    move-exception v8

    .line 80
    .local v8, e:Landroid/os/RemoteException;
    const-string v1, "GeocoderProxy"

    const-string v2, "getFromLocation failed"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "Service not Available"

    goto :goto_0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .parameter "locationName"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 91
    .local p12, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v1, p0, Lcom/android/internal/location/GeocoderProxy;->mServiceConnection:Lcom/android/internal/location/GeocoderProxy$Connection;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/GeocoderProxy;->mProvider:Landroid/location/IGeocodeProvider;

    .line 93
    .local v0, provider:Landroid/location/IGeocodeProvider;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 96
    :try_start_1
    invoke-interface/range {v0 .. v12}, Landroid/location/IGeocodeProvider;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 93
    .end local v0           #provider:Landroid/location/IGeocodeProvider;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 99
    .restart local v0       #provider:Landroid/location/IGeocodeProvider;
    :catch_0
    move-exception v13

    .line 100
    .local v13, e:Landroid/os/RemoteException;
    const-string v1, "GeocoderProxy"

    const-string v2, "getFromLocationName failed"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v13           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "Service not Available"

    goto :goto_0
.end method