.class public Lcom/broadcom/bt/preference/ResourceListPreference;
.super Landroid/preference/DialogPreference;
.source "ResourceListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ResourceListPreference"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mClickedDialogEntryIndex:I

.field protected mEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

.field protected mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/preference/ResourceListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/broadcom/bt/preference/ResourceListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mAdapter:Landroid/widget/ListAdapter;

    .line 48
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/preference/ResourceListPreference;->findIndexOfValue(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mEntryValues:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, -0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mEntryValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getEntryValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mEntryValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreferencedChangeListener()Lcom/broadcom/bt/preference/IPreferenceChangeListener;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mValue:I

    return v0
.end method

.method public notifyChanged()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/preference/DialogPreference;->notifyChanged()V

    .line 110
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

    iget v1, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/broadcom/bt/preference/IPreferenceChangeListener;->onPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 195
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mEntryValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mEntryValues:Ljava/util/ArrayList;

    iget v2, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 198
    .local v0, value:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/preference/ResourceListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/preference/ResourceListPreference;->setValue(I)V

    .line 202
    .end local v0           #value:I
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 226
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 166
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mEntryValues:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ResourceListPreference requires an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/preference/ResourceListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mClickedDialogEntryIndex:I

    .line 173
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/broadcom/bt/preference/ResourceListPreference$1;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/preference/ResourceListPreference$1;-><init>(Lcom/broadcom/bt/preference/ResourceListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 261
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 270
    :goto_0
    return-void

    .line 267
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;

    move-object v1, v0

    .line 268
    .local v1, myState:Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;
    invoke-virtual {v1}, Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 269
    iget v2, v1, Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;->value:I

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/preference/ResourceListPreference;->setValue(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 248
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 249
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 256
    :goto_0
    return-object v2

    .line 254
    :cond_0
    new-instance v0, Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 255
    .local v0, myState:Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceListPreference;->getValue()I

    move-result v2

    iput v2, v0, Lcom/broadcom/bt/preference/ResourceListPreference$SavedState;->value:I

    move-object v2, v0

    .line 256
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    const-string v2, "ResourceListPreference"

    .line 231
    if-eqz p1, :cond_0

    .line 233
    :try_start_0
    iget v1, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mValue:I

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/preference/ResourceListPreference;->getPersistedInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/preference/ResourceListPreference;->setValue(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local p2
    :goto_0
    return-void

    .line 234
    .restart local p2
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 235
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ResourceListPreference"

    const-string v1, "Unable to restore persisted value "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/preference/ResourceListPreference;->setValue(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 240
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 241
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "ResourceListPreference"

    const-string v1, "Unable to set to default value "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAdapter(Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mAdapter:Landroid/widget/ListAdapter;

    .line 78
    invoke-virtual {p1}, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->get()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mEntryValues:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method public setPreferenceChangedListener(Lcom/broadcom/bt/preference/IPreferenceChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

    .line 213
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 99
    iput p1, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mValue:I

    .line 100
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceListPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/preference/ResourceListPreference;->persistInt(I)Z

    .line 104
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceListPreference;->notifyChanged()V

    .line 105
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mEntryValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceListPreference;->mEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/preference/ResourceListPreference;->setValue(I)V

    .line 124
    :cond_0
    return-void
.end method
