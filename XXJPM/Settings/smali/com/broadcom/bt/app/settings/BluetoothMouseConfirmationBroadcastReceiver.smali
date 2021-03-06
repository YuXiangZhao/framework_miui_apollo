.class public Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMouseConfirmationBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private connected(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 52
    .local v1, mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    .line 53
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    const/high16 v2, 0x1000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    :cond_0
    const-class v2, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method private static getLastConnectedMouseAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "lastConnectedMouseAddress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setLastConnectedMouseAddress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "lastConnectedMouseAddress"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 22
    .local v3, mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    const/16 v6, 0x500

    if-ne v5, v6, :cond_0

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    const/16 v6, 0x580

    if-eq v5, v6, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, action:Ljava/lang/String;
    const-string v5, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 33
    const/4 v1, 0x2

    .line 34
    .local v1, STATE_CONNECTED:I
    const-string v0, "com.broadcom.bt.service.hid.extra.STATE"

    .line 35
    .local v0, EXTRA_STATE:Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 36
    .local v4, state:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationBroadcastReceiver;->getLastConnectedMouseAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationBroadcastReceiver;->connected(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
