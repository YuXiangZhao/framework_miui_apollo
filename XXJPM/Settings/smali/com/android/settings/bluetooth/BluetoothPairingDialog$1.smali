.class Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, bondState:I
    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    .line 99
    .end local v0           #bondState:I
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    const-string v2, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 95
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$100(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    goto :goto_0
.end method
