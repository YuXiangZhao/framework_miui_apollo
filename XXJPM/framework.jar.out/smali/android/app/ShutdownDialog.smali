.class public Landroid/app/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# static fields
.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final SHUTDOWN_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private MAX_IMAGECOUNT:I

.field private buf:[I

.field private cntImages:I

.field private handle:I

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mHasStarted:Z

.field private mImages:Landroid/graphics/Bitmap;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRunOnAnimationEnd:Ljava/lang/Runnable;

.field private mShutdownView:Landroid/widget/ImageView;

.field private mViewUpdateHandler:Landroid/os/Handler;

.field private str:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    const/16 v0, 0xc8

    iput v0, p0, Landroid/app/ShutdownDialog;->MAX_IMAGECOUNT:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ShutdownDialog;->cntImages:I

    .line 69
    iput-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 72
    iput-object v1, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 84
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method static synthetic access$000(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Landroid/app/ShutdownDialog;->handle:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/ShutdownDialog;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/app/ShutdownDialog;->buf:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/ShutdownDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Landroid/app/ShutdownDialog;->width:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Landroid/app/ShutdownDialog;->height:I

    return v0
.end method

.method static synthetic access$500(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/ShutdownDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const-string v4, "ShutdownDialog"

    .line 89
    const-string v2, "ShutdownDialog"

    const-string v2, "onCreate"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 93
    .local v0, l:Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 95
    .local v1, nl:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 96
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 98
    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 100
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    .line 101
    iget-object v2, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/app/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 103
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-static {v2}, Landroid/app/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/ShutdownDialog;->handle:I

    .line 104
    iget v2, p0, Landroid/app/ShutdownDialog;->handle:I

    invoke-static {v2}, Landroid/app/LibQmg;->qmgGetWidth(I)I

    move-result v2

    iput v2, p0, Landroid/app/ShutdownDialog;->width:I

    .line 105
    iget v2, p0, Landroid/app/ShutdownDialog;->handle:I

    invoke-static {v2}, Landroid/app/LibQmg;->qmgGetHeight(I)I

    move-result v2

    iput v2, p0, Landroid/app/ShutdownDialog;->height:I

    .line 107
    const-string v2, "ShutdownDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/ShutdownDialog;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v2, "ShutdownDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/ShutdownDialog;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget v2, p0, Landroid/app/ShutdownDialog;->width:I

    iget v3, p0, Landroid/app/ShutdownDialog;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/app/ShutdownDialog;->buf:[I

    .line 112
    new-instance v2, Landroid/app/ShutdownDialog$1;

    invoke-direct {v2, p0}, Landroid/app/ShutdownDialog$1;-><init>(Landroid/app/ShutdownDialog;)V

    iput-object v2, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ShutdownDialog;->mHasStarted:Z

    .line 148
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    :cond_0
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 156
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 162
    :cond_1
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->startSoundThreadForPowerOff()V

    .line 165
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Landroid/app/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 168
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v2, "ShutdownDialog"

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 169
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 172
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ShutdownDialog;->mHasStarted:Z

    .line 178
    return-void
.end method

.method public setOnAnimationEnd(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 182
    iput-object p1, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 183
    return-void
.end method
