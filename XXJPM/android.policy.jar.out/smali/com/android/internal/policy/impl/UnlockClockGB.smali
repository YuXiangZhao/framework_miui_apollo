.class public Lcom/android/internal/policy/impl/UnlockClockGB;
.super Landroid/widget/RelativeLayout;
.source "UnlockClockGB.java"


# static fields
.field private static final AMPMselection:I = 0x1

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "UnlockClock"


# instance fields
.field private mAM:Landroid/widget/TextView;

.field private mAM_PM_Check01:Z

.field private mColon01:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCreatedInPortrait:Z

.field private mDateFormatString:Ljava/lang/String;

.field private mDate_Month:Landroid/widget/TextView;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mMin01:Landroid/widget/ImageView;

.field private mMin02:Landroid/widget/ImageView;

.field private mPM:Landroid/widget/TextView;

.field private mRightNow:Ljava/util/Calendar;

.field private mTempSpace:Landroid/widget/LinearLayout;

.field private tz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "createdInPortrait"

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    .line 71
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mCreatedInPortrait:Z

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_position"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 78
    .local v1, layoutPosition:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mCreatedInPortrait:Z

    if-eqz v2, :cond_0

    .line 80
    const v2, 0x109009c

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 92
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    .line 93
    iput-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    .line 95
    const v2, 0x10202ee

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mTempSpace:Landroid/widget/LinearLayout;

    .line 96
    const v2, 0x1020232

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mHour01:Landroid/widget/ImageView;

    .line 97
    const v2, 0x1020233

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mHour02:Landroid/widget/ImageView;

    .line 98
    const v2, 0x1020234

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mColon01:Landroid/widget/ImageView;

    .line 99
    const v2, 0x1020235

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mMin01:Landroid/widget/ImageView;

    .line 100
    const v2, 0x1020236

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mMin02:Landroid/widget/ImageView;

    .line 101
    const v2, 0x10202e6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM:Landroid/widget/TextView;

    .line 102
    const v2, 0x10202ef

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    .line 103
    const v2, 0x10202e7

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDate_Month:Landroid/widget/TextView;

    .line 105
    if-nez v1, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mTempSpace:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockClockGB;->refreshTimeAndDateDisplay()V

    .line 113
    return-void

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mTempSpace:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private changeTimeStringToDrawable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "hourString"
    .parameter "minString"

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v5, ""

    .line 241
    new-array v0, v4, [I

    .line 242
    .local v0, choiceHourNumber:[I
    new-array v1, v4, [I

    .line 248
    .local v1, choiceMinNumber:[I
    const-string v4, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, timePattern1:[Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, timePattern2:[Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->sortTimeDrawables([Ljava/lang/String;)[I

    move-result-object v0

    .line 252
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UnlockClockGB;->sortTimeDrawables([Ljava/lang/String;)[I

    move-result-object v1

    .line 254
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mHour01:Landroid/widget/ImageView;

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mHour02:Landroid/widget/ImageView;

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mMin01:Landroid/widget/ImageView;

    aget v5, v1, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mMin02:Landroid/widget/ImageView;

    aget v5, v1, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    return-void
.end method

.method private checkTimeAMPM(I)Ljava/lang/String;
    .locals 1
    .parameter "minInt"

    .prologue
    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, minString:Ljava/lang/String;
    return-object v0
.end method

.method private checkTimeValue(I)Ljava/lang/String;
    .locals 3
    .parameter "minInt"

    .prologue
    .line 201
    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, minString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 204
    .end local v0           #minString:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #minString:Ljava/lang/String;
    goto :goto_0
.end method

.method private setAMPM()I
    .locals 5

    .prologue
    .line 187
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 188
    .local v0, am_pmInt01:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, strAMPM:[Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v1, v2, v3

    .line 193
    .local v1, am_pmString01:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return v0
.end method

.method private setAMPMMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 166
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM_PM_Check01:Z

    if-ne v1, v4, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockClockGB;->setAMPM()I

    .line 172
    const/4 v0, 0x1

    .line 174
    .local v0, am_pm:I
    if-nez v0, :cond_2

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_2
    if-ne v0, v4, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private sortTimeDrawables([Ljava/lang/String;)[I
    .locals 7
    .parameter "timePattern"

    .prologue
    .line 269
    const/16 v6, 0xa

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 278
    .local v5, unlock_clock_drawables:[I
    const/4 v6, 0x4

    new-array v0, v6, [I

    .line 280
    .local v0, choiceNumber:[I
    array-length v4, p1

    .line 282
    .local v4, k:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 284
    :try_start_0
    aget-object v6, p1, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 288
    .local v3, j:I
    :goto_1
    aget v6, v5, v3

    aput v6, v0, v2

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .end local v3           #j:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 286
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .restart local v3       #j:I
    goto :goto_1

    .line 291
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #j:I
    :cond_0
    return-object v0

    .line 269
    :array_0
    .array-data 0x4
        0x7et 0x3t 0x8t 0x1t
        0x80t 0x3t 0x8t 0x1t
        0x82t 0x3t 0x8t 0x1t
        0x84t 0x3t 0x8t 0x1t
        0x86t 0x3t 0x8t 0x1t
        0x88t 0x3t 0x8t 0x1t
        0x8at 0x3t 0x8t 0x1t
        0x8ct 0x3t 0x8t 0x1t
        0x8et 0x3t 0x8t 0x1t
        0x90t 0x3t 0x8t 0x1t
    .end array-data
.end method

.method private transformHourData(I)Ljava/lang/String;
    .locals 2
    .parameter "hourInt"

    .prologue
    .line 223
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM_PM_Check01:Z

    if-nez v1, :cond_2

    .line 224
    const/16 v1, 0xc

    if-le p1, v1, :cond_1

    add-int/lit8 p1, p1, -0xc

    .line 226
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockClockGB;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, hourString:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 225
    .end local v0           #hourString:Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    .line 231
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockClockGB;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #hourString:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    .line 265
    return-void
.end method

.method protected refreshTimeAndDateDisplay()V
    .locals 8

    .prologue
    .line 122
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 130
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 131
    const-string v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, current:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 138
    .end local v0           #current:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v5, "UnlockClock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GMT_update mRightNow.getTimeZone().getID() == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 146
    .local v1, hourInt01:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 148
    .local v3, minInt01:I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->transformHourData(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, hourString01:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UnlockClockGB;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, minString01:Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/UnlockClockGB;->changeTimeStringToDrawable(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM_PM_Check01:Z

    .line 154
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockClockGB;->setAMPMMode()V

    .line 160
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    const v6, 0x10400a2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDateFormatString:Ljava/lang/String;

    .line 161
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDate_Month:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDateFormatString:Ljava/lang/String;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void

    .line 134
    .end local v1           #hourInt01:I
    .end local v2           #hourString01:Ljava/lang/String;
    .end local v3           #minInt01:I
    .end local v4           #minString01:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    if-eqz v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getChangedTimeZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockClockGB;->refreshTimeAndDateDisplay()V

    .line 118
    return-void
.end method
