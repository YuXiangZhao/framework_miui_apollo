.class Landroid/app/SearchDialog$2;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SearchDialog;


# direct methods
.method constructor <init>(Landroid/app/SearchDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 710
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->autoUrlDetect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->isPerformingCompletion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->getImeOptions()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    or-int/lit8 v0, v1, 0x2

    .line 718
    .local v0, options:I
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$900(Landroid/app/SearchDialog;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 719
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1, v0}, Landroid/app/SearchDialog;->access$902(Landroid/app/SearchDialog;I)I

    .line 720
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/SearchDialog$SearchAutoComplete;->setImeOptions(I)V

    .line 722
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v2}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SearchDialog$SearchAutoComplete;->getInputType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/SearchDialog$SearchAutoComplete;->setInputType(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 685
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 692
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v0}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Landroid/app/SearchableInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v0}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchDialog$SearchAutoComplete;->isPerformingCompletion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 697
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    if-nez p1, :cond_4

    const-string v1, ""

    :goto_1
    invoke-static {v0, v1}, Landroid/app/SearchDialog;->access$202(Landroid/app/SearchDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 699
    :cond_1
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v0}, Landroid/app/SearchDialog;->access$300(Landroid/app/SearchDialog;)V

    .line 703
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/app/SearchDialog$SearchAutoComplete;

    move-result-object v1

    invoke-static {v1}, Landroid/app/SearchDialog$SearchAutoComplete;->access$400(Landroid/app/SearchDialog$SearchAutoComplete;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$500(Landroid/app/SearchDialog;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$600(Landroid/app/SearchDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v2}, Landroid/app/SearchDialog;->access$200(Landroid/app/SearchDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$700(Landroid/app/SearchDialog;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-static {v1}, Landroid/app/SearchDialog;->access$700(Landroid/app/SearchDialog;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.search.CONTEXT_IS_VOICE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const/4 v1, 0x1

    :goto_2
    invoke-static {v0, v1}, Landroid/app/SearchDialog;->access$800(Landroid/app/SearchDialog;Z)V

    goto :goto_0

    .line 697
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 703
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method
