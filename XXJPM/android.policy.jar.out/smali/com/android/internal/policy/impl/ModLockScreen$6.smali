.class Lcom/android/internal/policy/impl/ModLockScreen$6;
.super Ljava/lang/Object;
.source "ModLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ModLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ModLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ModLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/internal/policy/impl/ModLockScreen$6;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x8

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/ModLockScreen$6;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/ModLockScreen;->access$000(Lcom/android/internal/policy/impl/ModLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/ModLockScreen$6;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/ModLockScreen;->access$100(Lcom/android/internal/policy/impl/ModLockScreen;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/ModLockScreen$6;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/ModLockScreen;->access$200(Lcom/android/internal/policy/impl/ModLockScreen;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/ModLockScreen$6;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/ModLockScreen;->access$400(Lcom/android/internal/policy/impl/ModLockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/ModLockScreen$6;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/ModLockScreen;->access$300(Lcom/android/internal/policy/impl/ModLockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/ModLockScreen$6;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/ModLockScreen;->access$500(Lcom/android/internal/policy/impl/ModLockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/ModLockScreen$6;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/ModLockScreen;->access$600(Lcom/android/internal/policy/impl/ModLockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/ModLockScreen$6;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    const/16 v1, 0x55

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ModLockScreen;->access$700(Lcom/android/internal/policy/impl/ModLockScreen;I)V

    .line 256
    :cond_0
    return-void
.end method
