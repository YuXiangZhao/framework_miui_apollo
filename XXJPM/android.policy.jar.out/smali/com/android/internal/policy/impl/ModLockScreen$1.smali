.class Lcom/android/internal/policy/impl/ModLockScreen$1;
.super Ljava/lang/Object;
.source "ModLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ModLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
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
    .line 231
    iput-object p1, p0, Lcom/android/internal/policy/impl/ModLockScreen$1;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/ModLockScreen$1;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/ModLockScreen;->access$000(Lcom/android/internal/policy/impl/ModLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/ModLockScreen$1;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/ModLockScreen;->access$000(Lcom/android/internal/policy/impl/ModLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 234
    return-void
.end method
