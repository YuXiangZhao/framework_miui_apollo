.class Landroid/widget/SlidingButton$SlidingHandler;
.super Landroid/os/Handler;
.source "SlidingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SlidingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SlidingButton;


# direct methods
.method private constructor <init>(Landroid/widget/SlidingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Landroid/widget/SlidingButton$SlidingHandler;->this$0:Landroid/widget/SlidingButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SlidingButton;Landroid/widget/SlidingButton$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Landroid/widget/SlidingButton$SlidingHandler;-><init>(Landroid/widget/SlidingButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 320
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 322
    :pswitch_0
    iget-object v0, p0, Landroid/widget/SlidingButton$SlidingHandler;->this$0:Landroid/widget/SlidingButton;

    invoke-static {v0}, Landroid/widget/SlidingButton;->access$100(Landroid/widget/SlidingButton;)V

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
