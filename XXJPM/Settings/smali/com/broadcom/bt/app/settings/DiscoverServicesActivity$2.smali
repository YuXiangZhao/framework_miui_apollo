.class Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$2;
.super Ljava/lang/Object;
.source "DiscoverServicesActivity.java"

# interfaces
.implements Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$2;->this$0:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .parameter "serviceName"

    .prologue
    .line 94
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$2;->this$0:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, p:Landroid/preference/Preference;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 96
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$2;->this$0:Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;

    invoke-static {v1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->access$200(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)Lcom/android/settings/ProgressCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 98
    return-void
.end method
