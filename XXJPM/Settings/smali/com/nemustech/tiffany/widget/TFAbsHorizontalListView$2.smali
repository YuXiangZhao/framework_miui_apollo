.class Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$2;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "TFAbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3337
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$2;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public performEditorAction(I)Z
    .locals 4
    .parameter "editorAction"

    .prologue
    const/4 v3, 0x0

    .line 3324
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 3325
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$2;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3328
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 3329
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$2;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3331
    :cond_0
    const/4 v1, 0x1

    .line 3333
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3317
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$2;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$1600(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$2;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$1600(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
