.class Lcom/android/settings/MasterClear$5;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-virtual {v1}, Lcom/android/settings/MasterClear;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mt_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 229
    .local v0, mobileTrackerStatus:I
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    const/16 v2, 0x37

    invoke-static {v1, v2}, Lcom/android/settings/MasterClear;->access$100(Lcom/android/settings/MasterClear;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v1}, Lcom/android/settings/MasterClear;->access$200(Lcom/android/settings/MasterClear;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v1}, Lcom/android/settings/MasterClear;->access$000(Lcom/android/settings/MasterClear;)V

    goto :goto_0
.end method
