.class public Lcom/android/settings/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final SEEKBAR_ID:[I = null

.field private static final SEEKBAR_TYPE:[I = null

.field private static final TAG:Ljava/lang/String; = "RingerVolumePreference"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mNotificationVolumeTitle:Landroid/widget/TextView;

.field private mNotificationsUseRingVolumeCheckbox:Landroid/widget/CheckBox;

.field private mOldNotification:I

.field private mOldTouchSoundVolume:I

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mTouchSoundVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    return-void

    .line 46
    :array_0
    .array-data 0x4
        0x94t 0x0t 0xbt 0x7ft
        0x90t 0x0t 0xbt 0x7ft
        0x91t 0x0t 0xbt 0x7ft
    .end array-data

    .line 52
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerVolumePreference;->setStreamType(I)V

    .line 72
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerVolumePreference;->setDialogLayoutResource(I)V

    .line 73
    const v0, 0x7f02004b

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerVolumePreference;->setDialogIcon(I)V

    .line 75
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 76
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method private cleanup()V
    .locals 4

    .prologue
    .line 168
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 169
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 171
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 176
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 168
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_2
    return-void
.end method

.method private setNotificationVolumeVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationVolumeTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    return-void

    :cond_1
    move v1, v3

    .line 161
    goto :goto_0

    :cond_2
    move v1, v3

    .line 164
    goto :goto_1
.end method


# virtual methods
.method public onActivityStop()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 132
    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->cleanup()V

    .line 133
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 80
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 82
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 83
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 84
    .local v1, seekBar:Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v3, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v0

    invoke-direct {v3, p0, v4, v1, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v3, v2, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v1           #seekBar:Landroid/widget/SeekBar;
    :cond_0
    const v2, 0x7f0b0091

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 89
    .restart local v1       #seekBar:Landroid/widget/SeekBar;
    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 90
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setSoundEffect(I)V

    .line 92
    const v2, 0x7f0b0093

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationVolumeTitle:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f0b0092

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationsUseRingVolumeCheckbox:Landroid/widget/CheckBox;

    .line 95
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationsUseRingVolumeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notifications_use_ring_volume"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/RingerVolumePreference;->mOldNotification:I

    .line 98
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationsUseRingVolumeCheckbox:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/settings/RingerVolumePreference;->mOldNotification:I

    if-ne v3, v6, :cond_1

    move v3, v6

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationsUseRingVolumeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v6

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/RingerVolumePreference;->setNotificationVolumeVisibility(Z)V

    .line 100
    return-void

    :cond_1
    move v3, v7

    .line 98
    goto :goto_1

    :cond_2
    move v2, v7

    .line 99
    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 136
    if-nez p2, :cond_1

    move v1, v3

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/RingerVolumePreference;->setNotificationVolumeVisibility(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notifications_use_ring_volume"

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 146
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 149
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    return-void

    :cond_1
    move v1, v4

    .line 136
    goto :goto_0

    :cond_2
    move v3, v4

    .line 138
    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 10
    .parameter "positiveResult"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 106
    if-nez p1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 108
    .local v5, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 107
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v5           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    iget v6, p0, Lcom/android/settings/RingerVolumePreference;->mOldNotification:I

    if-ne v6, v8, :cond_3

    move v3, v8

    .line 112
    .local v3, isChecked:Z
    :goto_1
    if-nez v3, :cond_4

    move v6, v8

    :goto_2
    invoke-direct {p0, v6}, Lcom/android/settings/RingerVolumePreference;->setNotificationVolumeVisibility(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notifications_use_ring_volume"

    if-eqz v3, :cond_5

    :goto_3
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    if-eqz v3, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 122
    .local v1, audioManager:Landroid/media/AudioManager;
    const/4 v6, 0x5

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    invoke-virtual {v1, v6, v7, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 126
    .end local v0           #arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #i$:I
    .end local v3           #isChecked:Z
    .end local v4           #len$:I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->cleanup()V

    .line 127
    return-void

    .restart local v0       #arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    :cond_3
    move v3, v9

    .line 111
    goto :goto_1

    .restart local v3       #isChecked:Z
    :cond_4
    move v6, v9

    .line 112
    goto :goto_2

    :cond_5
    move v8, v9

    .line 114
    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 202
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/android/settings/RingerVolumePreference$SavedState;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 204
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 217
    :cond_1
    return-void

    .line 208
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/settings/RingerVolumePreference$SavedState;

    move-object v2, v0

    .line 209
    .local v2, myState:Lcom/android/settings/RingerVolumePreference$SavedState;
    invoke-virtual {v2}, Lcom/android/settings/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {p0, v5}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 210
    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v2, v5}, Lcom/android/settings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 211
    .local v4, volumeStore:[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 212
    iget-object v5, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v1

    .line 213
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_3

    .line 214
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 211
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 155
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 154
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 183
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 184
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 197
    :goto_0
    return-object v5

    .line 189
    :cond_0
    new-instance v1, Lcom/android/settings/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settings/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 190
    .local v1, myState:Lcom/android/settings/RingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/settings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 191
    .local v4, volumeStore:[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 192
    iget-object v5, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 193
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 194
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 191
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v5, v1

    .line 197
    goto :goto_0
.end method
