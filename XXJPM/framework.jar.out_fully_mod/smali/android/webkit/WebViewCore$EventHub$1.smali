.class Landroid/webkit/WebViewCore$EventHub$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewCore$EventHub;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 53
    .parameter "msg"

    .prologue
    .line 985
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 1476
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 987
    .restart local p0
    .restart local p1
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 993
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    monitor-enter v5

    .line 994
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/BrowserFrame;->destroy()V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$702(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->onDestroyed()V

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$902(Landroid/webkit/WebViewCore;I)I

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$1002(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 999
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1003
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1004
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v42, v0

    .line 1005
    .local v42, nodePointer:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v37

    .line 1007
    .local v37, label:Ljava/lang/String;
    if-eqz v37, :cond_0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x7d

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v42

    move v3, v7

    move-object/from16 v4, v37

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1016
    .end local v37           #label:Ljava/lang/String;
    .end local v42           #nodePointer:I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1020
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;FI)V

    goto/16 :goto_0

    .line 1025
    .restart local p0
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/webkit/WebViewCore$GetUrlData;

    .line 1026
    .local v43, param:Landroid/webkit/WebViewCore$GetUrlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    move-object v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1031
    .end local v43           #param:Landroid/webkit/WebViewCore$GetUrlData;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/webkit/WebViewCore$PostUrlData;

    .line 1032
    .local v43, param:Landroid/webkit/WebViewCore$PostUrlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 1036
    .end local v43           #param:Landroid/webkit/WebViewCore$PostUrlData;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/webkit/WebViewCore$BaseUrlData;

    .line 1037
    .local v38, loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    move-object v6, v0

    .line 1038
    .local v6, baseUrl:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1039
    const/16 v5, 0x3a

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    .line 1040
    .local v34, i:I
    if-lez v34, :cond_1

    .line 1051
    const/4 v5, 0x0

    move-object v0, v6

    move v1, v5

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v49

    .line 1052
    .local v49, scheme:Ljava/lang/String;
    const-string v5, "http"

    move-object/from16 v0, v49

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ftp"

    move-object/from16 v0, v49

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "about"

    move-object/from16 v0, v49

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "javascript"

    move-object/from16 v0, v49

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    .line 1060
    .end local v34           #i:I
    .end local v49           #scheme:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1072
    .end local v6           #baseUrl:Ljava/lang/String;
    .end local v38           #loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 1077
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->stopLoading()V

    goto/16 :goto_0

    .line 1081
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_0

    .line 1085
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    .line 1089
    .restart local p0
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    .line 1093
    .restart local p0
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1700(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 1097
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebView$ViewSizeData;

    .line 1099
    .local v29, data:Landroid/webkit/WebView$ViewSizeData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    move v8, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    move v9, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    move v10, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    move v11, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    move v12, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    move v13, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    move v14, v0

    invoke-static/range {v7 .. v14}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;IIIFIIZ)V

    goto/16 :goto_0

    .line 1108
    .end local v29           #data:Landroid/webkit/WebView$ViewSizeData;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/graphics/Point;

    .line 1109
    .local v45, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v7, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v8, v0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$1900(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_0

    .line 1113
    .end local v45           #pt:Landroid/graphics/Point;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/graphics/Rect;

    .line 1114
    .local v46, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v46

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {v46 .. v46}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v46 .. v46}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$2000(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_0

    .line 1121
    .end local v46           #r:Landroid/graphics/Rect;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->loadType()I

    move-result v5

    if-nez v5, :cond_3

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_0

    .line 1126
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->goBackOrForward(I)V

    goto/16 :goto_0

    .line 1131
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->stopLoading()V

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1136
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebViewCore$EventHub;->access$2300(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore$EventHub;->access$2202(Landroid/webkit/WebViewCore$EventHub;I)I

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore$EventHub;->access$2300(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1139
    invoke-static {}, Landroid/webkit/WebViewCore;->pauseTimers()V

    .line 1140
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v5

    const/16 v6, 0x6f

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1145
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore$EventHub;->access$2300(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebViewCore$EventHub;->access$2200(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1146
    invoke-static {}, Landroid/webkit/WebViewCore;->resumeTimers()V

    .line 1147
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v5

    const/16 v6, 0x70

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1152
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2400(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1156
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1160
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;Z)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1165
    :pswitch_18
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_4

    .line 1166
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1169
    :cond_4
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 1174
    :pswitch_19
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_6

    .line 1175
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1178
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/util/Map;

    .line 1179
    .local v39, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string/jumbo v6, "type"

    move-object/from16 v0, v39

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string/jumbo v6, "subtype"

    move-object/from16 v0, v39

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1184
    .end local v39           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0
    .restart local p1
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    :goto_2
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1188
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v6

    iget v6, v6, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebBackForwardList;->close(I)V

    goto/16 :goto_0

    .line 1193
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/webkit/WebViewCore$ReplaceTextData;

    .line 1194
    .local v48, rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v9, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    move v11, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    move v12, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    move v13, v0

    invoke-static/range {v7 .. v13}, Landroid/webkit/WebViewCore;->access$2900(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V

    goto/16 :goto_0

    .line 1200
    .end local v48           #rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/webkit/WebViewCore$JSKeyData;

    .line 1201
    .local v36, jsData:Landroid/webkit/WebViewCore$JSKeyData;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    move-object/from16 v31, v0

    .line 1202
    .local v31, evt:Landroid/view/KeyEvent;
    invoke-virtual/range {v31 .. v31}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 1203
    .local v10, keyCode:I
    invoke-virtual/range {v31 .. v31}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v11

    .line 1204
    .local v11, keyValue:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    .line 1205
    .local v8, generation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/KeyEvent;->isDown()Z

    move-result v12

    invoke-virtual/range {v31 .. v31}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v13

    invoke-virtual/range {v31 .. v31}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v14

    invoke-virtual/range {v31 .. v31}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v15

    invoke-static/range {v7 .. v15}, Landroid/webkit/WebViewCore;->access$3000(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V

    goto/16 :goto_0

    .line 1216
    .end local v8           #generation:I
    .end local v10           #keyCode:I
    .end local v11           #keyValue:I
    .end local v31           #evt:Landroid/view/KeyEvent;
    .end local v36           #jsData:Landroid/webkit/WebViewCore$JSKeyData;
    :pswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkit/WebViewCore$CursorData;

    .line 1217
    .local v21, cDat:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$3100(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1222
    .end local v21           #cDat:Landroid/webkit/WebViewCore$CursorData;
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/Network;->clearUserSslPrefTable()V

    goto/16 :goto_0

    .line 1227
    :pswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Landroid/webkit/WebViewCore$TouchUpData;

    .line 1228
    .local v52, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v12, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v52

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    move v13, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    move v14, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    move v15, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    move/from16 v16, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    move/from16 v17, v0

    invoke-static/range {v12 .. v17}, Landroid/webkit/WebViewCore;->access$3300(Landroid/webkit/WebViewCore;IIIII)V

    goto/16 :goto_0

    .line 1234
    .end local v52           #touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    :pswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Landroid/webkit/WebViewCore$TouchEventData;

    .line 1235
    .local v50, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x73

    move-object/from16 v0, v50

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v8, v0

    iget-object v8, v8, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v50

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v9, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    move v10, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    move v11, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move v12, v0

    invoke-static {v8, v9, v10, v11, v12}, Landroid/webkit/WebViewCore;->access$3400(Landroid/webkit/WebViewCore;IIII)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v0, v50

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move v9, v0

    if-eqz v9, :cond_9

    move-object/from16 v9, v50

    :goto_4
    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 1246
    .end local v50           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    :goto_5
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$3500(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    .line 1250
    :pswitch_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/webkit/WebViewCore$JSInterfaceData;

    .line 1251
    .local v36, jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    move-object v6, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1256
    .end local v36           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/BrowserFrame;->externalRepresentation(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1261
    .restart local p0
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/BrowserFrame;->documentAsText(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1265
    .restart local p0
    :pswitch_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewCore$CursorData;

    .line 1266
    .local v32, focusData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$3600(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 1270
    .end local v32           #focusData:Landroid/webkit/WebViewCore$CursorData;
    :pswitch_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebViewCore$CursorData;

    .line 1271
    .local v28, cursorData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move v7, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    move v8, v0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$3700(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_0

    .line 1276
    .end local v28           #cursorData:Landroid/webkit/WebViewCore$CursorData;
    :pswitch_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/webkit/WebViewCore$CursorData;

    .line 1277
    .local v22, cData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    move v6, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move v8, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    move v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$3800(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_0

    .line 1283
    .end local v22           #cData:Landroid/webkit/WebViewCore$CursorData;
    :pswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Message;

    .line 1284
    .local v33, hrefMsg:Landroid/os/Message;
    invoke-virtual/range {v33 .. v33}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "url"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v9, v0

    invoke-static {v7, v8, v9}, Landroid/webkit/WebViewCore;->access$3900(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {v33 .. v33}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v9, v0

    invoke-static {v7, v8, v9}, Landroid/webkit/WebViewCore;->access$4000(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    invoke-virtual/range {v33 .. v33}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1293
    .end local v33           #hrefMsg:Landroid/os/Message;
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->postInvalidate()V

    .line 1298
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1302
    :pswitch_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Message;

    .line 1303
    .local v35, imageResult:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->documentHasImages()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    :goto_6
    move v0, v5

    move-object/from16 v1, v35

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1305
    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1303
    :cond_c
    const/4 v5, 0x0

    goto :goto_6

    .line 1309
    .end local v35           #imageResult:Landroid/os/Message;
    :pswitch_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/webkit/WebViewCore$TextSelectionData;

    .line 1311
    .local v30, deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    move v6, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$4300(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_0

    .line 1316
    .end local v30           #deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 1320
    :pswitch_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/util/SparseBooleanArray;

    .line 1322
    .local v24, choices:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    .line 1323
    .local v26, choicesSize:I
    move/from16 v0, v26

    new-array v0, v0, [Z

    move-object/from16 v25, v0

    .line 1324
    .local v25, choicesArray:[Z
    const/16 v20, 0x0

    .local v20, c:I
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 1325
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    aput-boolean v5, v25, v20

    .line 1324
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 1327
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$4500(Landroid/webkit/WebViewCore;[ZI)V

    goto/16 :goto_0

    .line 1332
    .end local v20           #c:I
    .end local v24           #choices:Landroid/util/SparseBooleanArray;
    .end local v25           #choicesArray:[Z
    .end local v26           #choicesSize:I
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4600(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1336
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4700(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1340
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    const/4 v6, 0x1

    :goto_8
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4800(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    .line 1344
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    const/4 v6, 0x1

    :goto_9
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v6, 0x0

    goto :goto_9

    .line 1348
    :pswitch_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1352
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1356
    :pswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1360
    .restart local p0
    :pswitch_36
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebViewCore$GeolocationPermissionsData;

    .line 1362
    .local v29, data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    move v7, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    move v8, v0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$5300(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1367
    .end local v29           #data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    :pswitch_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$5402(Landroid/webkit/WebViewCore;I)I

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$5502(Landroid/webkit/WebViewCore;I)I

    goto/16 :goto_0

    .line 1372
    :pswitch_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5600(Landroid/webkit/WebViewCore;)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$5702(Landroid/webkit/WebViewCore;Z)Z

    goto/16 :goto_0

    .line 1380
    :pswitch_39
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1384
    :pswitch_3a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    instance-of v5, v5, Landroid/os/Message;

    if-eqz v5, :cond_0

    .line 1385
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1390
    .restart local p0
    :pswitch_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$5900(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1394
    .restart local p0
    :pswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebViewCore$MotionUpData;

    .line 1395
    .local v41, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    move v7, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    move-object v8, v0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$6000(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;)V

    .line 1400
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x77

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    move v7, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v40

    .line 1403
    .local v40, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v0, v5

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1409
    .end local v40           #message:Landroid/os/Message;
    .end local v41           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :pswitch_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$6100(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1413
    :pswitch_3e
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_11

    .line 1414
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1417
    :cond_11
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/util/Set;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageNames(Ljava/util/Set;)V

    goto/16 :goto_0

    .line 1422
    .restart local p0
    :pswitch_3f
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_12

    .line 1423
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1426
    :cond_12
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1431
    .restart local p0
    :pswitch_40
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_13

    .line 1432
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1435
    :cond_13
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/JWebCoreJavaBridge;->removePackageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1440
    .restart local p0
    :pswitch_41
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Landroid/graphics/Point;

    .line 1441
    .local v51, touchPt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v51

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    const/high16 v8, 0x3f80

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$6200(Landroid/webkit/WebViewCore;IIF)Landroid/graphics/Rect;

    move-result-object v47

    .line 1442
    .local v47, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x82

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v47

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1448
    .end local v47           #rect:Landroid/graphics/Rect;
    .end local v51           #touchPt:Landroid/graphics/Point;
    :pswitch_42
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkit/WebViewCore$CursorData;

    .line 1449
    .local v23, cd:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$6300(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 1453
    .end local v23           #cd:Landroid/webkit/WebViewCore$CursorData;
    :pswitch_43
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/webkit/WebViewCore$CopyParams;

    .line 1454
    .local v44, params:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v12, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v13, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v14, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move v15, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mExtendSelection:Z

    move/from16 v16, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    move/from16 v17, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move/from16 v18, v0

    invoke-static/range {v12 .. v18}, Landroid/webkit/WebViewCore;->access$6400(Landroid/webkit/WebViewCore;IIIZZF)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$6500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1463
    .end local v44           #params:Landroid/webkit/WebViewCore$CopyParams;
    :pswitch_44
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/webkit/WebViewCore$CopyParams;

    .line 1464
    .local v19, Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v7, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v8, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move v9, v0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroid/webkit/WebViewCore;->access$6600(Landroid/webkit/WebViewCore;IIFZ)Z

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$6500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1471
    .end local v19           #Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    :pswitch_45
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkit/WebViewCore$CopyParams;

    .line 1472
    .local v27, clearSelection:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v27

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v6, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$6700(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 985
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_11
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_1a
        :pswitch_1b
        :pswitch_2d
        :pswitch_1c
        :pswitch_1d
        :pswitch_10
        :pswitch_2a
        :pswitch_d
        :pswitch_18
        :pswitch_2b
        :pswitch_0
        :pswitch_2c
        :pswitch_2e
        :pswitch_2f
        :pswitch_3a
        :pswitch_30
        :pswitch_26
        :pswitch_1e
        :pswitch_0
        :pswitch_1
        :pswitch_37
        :pswitch_7
        :pswitch_38
        :pswitch_39
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_23
        :pswitch_8
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_36
        :pswitch_3b
        :pswitch_3d
        :pswitch_19
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_43
        :pswitch_45
        :pswitch_44
    .end packed-switch
.end method
