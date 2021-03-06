.class Landroid/server/BluetoothEventLoop$EventLoopHandler;
.super Landroid/os/Handler;
.source "BluetoothEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventLoopHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothEventLoop;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothEventLoop;Landroid/server/BluetoothEventLoop$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop$EventLoopHandler;-><init>(Landroid/server/BluetoothEventLoop;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, address:Ljava/lang/String;
    const/4 v3, 0x0

    .line 100
    .local v3, objs:[Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 153
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local p0
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #address:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 103
    .restart local v1       #address:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 104
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/server/BluetoothService;->createBond(Ljava/lang/String;)Z

    goto :goto_0

    .line 109
    :sswitch_1
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->restart()V

    goto :goto_0

    .line 112
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #address:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 113
    .restart local v1       #address:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 114
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Landroid/server/BluetoothService;->setPairingConfirmation(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 120
    :sswitch_3
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService$BondState;->listInState(I)[Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, devices:[Ljava/lang/String;
    array-length v4, v2

    if-eqz v4, :cond_0

    .line 124
    array-length v4, v2

    if-le v4, v6, :cond_1

    .line 125
    const-string v4, "BluetoothEventLoop"

    const-string v5, " There is more than one device in the Bonding State"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_1
    aget-object v1, v2, v7

    .line 129
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v6, 0x8

    invoke-virtual {v4, v1, v5, v6}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    goto :goto_0

    .line 135
    .end local v2           #devices:[Ljava/lang/String;
    :sswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 136
    iget-object v5, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    aget-object p0, v3, v7

    .end local p0
    check-cast p0, Ljava/lang/String;

    aget-object v4, v3, v6

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-static {v5, p0, v4}, Landroid/server/BluetoothEventLoop;->access$300(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .restart local p0
    :sswitch_5
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/server/BluetoothEventLoop;->access$400(Landroid/server/BluetoothEventLoop;[Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .restart local p0
    :sswitch_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 143
    iget-object v5, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    aget-object p0, v3, v7

    .end local p0
    check-cast p0, Ljava/lang/String;

    aget-object v4, v3, v6

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-static {v5, p0, v4}, Landroid/server/BluetoothEventLoop;->access$500(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    .restart local p0
    :sswitch_7
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/server/BluetoothEventLoop;->access$600(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .restart local p0
    :sswitch_8
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/server/BluetoothEventLoop;->access$700(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
    .end sparse-switch
.end method
