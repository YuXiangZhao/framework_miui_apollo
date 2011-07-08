.class Landroid/widget/DefaultFastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/widget/FastScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DefaultFastScroller$1;,
        Landroid/widget/DefaultFastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static MIN_PAGES:I = 0x0

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2


# instance fields
.field private mChangedBounds:Z

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsThumbHidden:Z

.field private mItemCount:I

.field private mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mLongList:Z

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlayPosition:F

.field private mOverlaySize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScrollCompleted:Z

.field private mScrollFade:Landroid/widget/DefaultFastScroller$ScrollFade;

.field private mScrollOffset:I

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbW:I

.field private mThumbY:I

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x4

    sput v0, Landroid/widget/DefaultFastScroller;->MIN_PAGES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/high16 v0, 0x3f00

    iput v0, p0, Landroid/widget/DefaultFastScroller;->mOverlayPosition:F

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DefaultFastScroller;->mItemCount:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/DefaultFastScroller;->mScrollOffset:I

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/DefaultFastScroller;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object p2, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/DefaultFastScroller;->init(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method static synthetic access$100(Landroid/widget/DefaultFastScroller;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/DefaultFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/DefaultFastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/DefaultFastScroller;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/widget/DefaultFastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Landroid/widget/DefaultFastScroller;->mIsThumbHidden:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/DefaultFastScroller;)Landroid/widget/AbsListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 433
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 434
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 435
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 436
    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 6

    .prologue
    .line 288
    iget-object v3, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 289
    .local v1, adapter:Landroid/widget/Adapter;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/DefaultFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 290
    instance-of v3, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v3, :cond_0

    .line 291
    move-object v0, v1

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v3

    iput v3, p0, Landroid/widget/DefaultFastScroller;->mListOffset:I

    .line 292
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .end local v1           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 294
    .restart local v1       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v3, v1, Landroid/widget/ExpandableListConnector;

    if-eqz v3, :cond_2

    .line 295
    move-object v0, v1

    check-cast v0, Landroid/widget/ExpandableListConnector;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    .line 296
    .local v2, expAdapter:Landroid/widget/ExpandableListAdapter;
    instance-of v3, v2, Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_1

    .line 297
    check-cast v2, Landroid/widget/SectionIndexer;

    .end local v2           #expAdapter:Landroid/widget/ExpandableListAdapter;
    iput-object v2, p0, Landroid/widget/DefaultFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 298
    check-cast v1, Landroid/widget/BaseAdapter;

    .end local v1           #adapter:Landroid/widget/Adapter;
    iput-object v1, p0, Landroid/widget/DefaultFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 299
    iget-object v3, p0, Landroid/widget/DefaultFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v3}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/DefaultFastScroller;->mSections:[Ljava/lang/Object;

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 302
    .restart local v1       #adapter:Landroid/widget/Adapter;
    :cond_2
    instance-of v3, v1, Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_3

    .line 303
    move-object v0, v1

    check-cast v0, Landroid/widget/BaseAdapter;

    move-object v3, v0

    iput-object v3, p0, Landroid/widget/DefaultFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 304
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1           #adapter:Landroid/widget/Adapter;
    iput-object v1, p0, Landroid/widget/DefaultFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 305
    iget-object v3, p0, Landroid/widget/DefaultFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v3}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/DefaultFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 308
    .restart local v1       #adapter:Landroid/widget/Adapter;
    :cond_3
    check-cast v1, Landroid/widget/BaseAdapter;

    .end local v1           #adapter:Landroid/widget/Adapter;
    iput-object v1, p0, Landroid/widget/DefaultFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 309
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, " "

    aput-object v5, v3, v4

    iput-object v3, p0, Landroid/widget/DefaultFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private getState()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Landroid/widget/DefaultFastScroller;->mState:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 157
    .local v0, res:Landroid/content/res/Resources;
    const v4, 0x108027b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Landroid/widget/DefaultFastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 160
    const v4, 0x1080285

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/DefaultFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 161
    iput-boolean v6, p0, Landroid/widget/DefaultFastScroller;->mScrollCompleted:Z

    .line 163
    invoke-direct {p0}, Landroid/widget/DefaultFastScroller;->getSectionsFromIndexer()V

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroid/widget/DefaultFastScroller;->mOverlaySize:I

    .line 167
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroid/widget/DefaultFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 168
    new-instance v4, Landroid/widget/DefaultFastScroller$ScrollFade;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/DefaultFastScroller$ScrollFade;-><init>(Landroid/widget/DefaultFastScroller;Landroid/widget/DefaultFastScroller$1;)V

    iput-object v4, p0, Landroid/widget/DefaultFastScroller;->mScrollFade:Landroid/widget/DefaultFastScroller$ScrollFade;

    .line 169
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroid/widget/DefaultFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 170
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 172
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Landroid/widget/DefaultFastScroller;->mOverlaySize:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    new-array v5, v6, [I

    const v6, 0x1010036

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 175
    .local v1, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 176
    .local v2, textColor:Landroid/content/res/ColorStateList;
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 177
    .local v3, textColorNormal:I
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 179
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const v6, -0x777778

    invoke-virtual {v4, v8, v5, v8, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 181
    iput v7, p0, Landroid/widget/DefaultFastScroller;->mState:I

    .line 182
    return-void
.end method

.method private internalScrollTo(F)V
    .locals 22
    .parameter "position"

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    .line 328
    .local v3, count:I
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DefaultFastScroller;->mScrollCompleted:Z

    .line 329
    const/high16 v20, 0x3f80

    move v0, v3

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x4100

    div-float v8, v20, v21

    .line 330
    .local v8, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 332
    .local v18, sections:[Ljava/lang/Object;
    if-eqz v18, :cond_b

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 333
    move-object/from16 v0, v18

    array-length v0, v0

    move v10, v0

    .line 334
    .local v10, nSections:I
    move v0, v10

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 335
    .local v16, section:I
    move/from16 v0, v16

    move v1, v10

    if-lt v0, v1, :cond_0

    .line 336
    const/16 v20, 0x1

    sub-int v16, v10, v20

    .line 338
    :cond_0
    move/from16 v4, v16

    .line 339
    .local v4, exactSection:I
    move/from16 v17, v16

    .line 340
    .local v17, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 347
    .local v9, index:I
    move v11, v3

    .line 348
    .local v11, nextIndex:I
    move v14, v9

    .line 349
    .local v14, prevIndex:I
    move/from16 v15, v16

    .line 350
    .local v15, prevSection:I
    add-int/lit8 v13, v16, 0x1

    .line 352
    .local v13, nextSection:I
    const/16 v20, 0x1

    sub-int v20, v10, v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    add-int/lit8 v21, v16, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 357
    :cond_1
    if-ne v11, v9, :cond_3

    .line 359
    :cond_2
    if-lez v16, :cond_3

    .line 360
    add-int/lit8 v16, v16, -0x1

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    .line 362
    if-eq v14, v9, :cond_4

    .line 363
    move/from16 v15, v16

    .line 364
    move/from16 v17, v16

    .line 379
    :cond_3
    :goto_0
    add-int/lit8 v12, v13, 0x1

    .line 381
    .local v12, nextNextSection:I
    :goto_1
    if-ge v12, v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v12

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    move/from16 v0, v20

    move v1, v11

    if-ne v0, v1, :cond_5

    .line 382
    add-int/lit8 v12, v12, 0x1

    .line 383
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 366
    .end local v12           #nextNextSection:I
    :cond_4
    if-nez v16, :cond_2

    .line 369
    const/16 v17, 0x0

    .line 370
    goto :goto_0

    .line 388
    .restart local v12       #nextNextSection:I
    :cond_5
    move v0, v15

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v7, v20, v21

    .line 389
    .local v7, fPrev:F
    move v0, v13

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v6, v20, v21

    .line 390
    .local v6, fNext:F
    if-ne v15, v4, :cond_8

    sub-float v20, p1, v7

    cmpg-float v20, v20, v8

    if-gez v20, :cond_8

    .line 391
    move v9, v14

    .line 397
    :goto_2
    const/16 v20, 0x1

    sub-int v20, v3, v20

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    const/16 v20, 0x1

    sub-int v9, v3, v20

    .line 399
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    move-object v5, v0

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 401
    .local v5, expList:Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DefaultFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v9

    invoke-static/range {v20 .. v20}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    move-object v0, v5

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DefaultFastScroller;->mScrollOffset:I

    move/from16 v21, v0

    move-object v0, v5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 422
    .end local v4           #exactSection:I
    .end local v5           #expList:Landroid/widget/ExpandableListView;
    .end local v6           #fNext:F
    .end local v7           #fPrev:F
    .end local v10           #nSections:I
    .end local v11           #nextIndex:I
    .end local v12           #nextNextSection:I
    .end local v13           #nextSection:I
    .end local v14           #prevIndex:I
    .end local v15           #prevSection:I
    .end local v16           #section:I
    .end local p1
    :goto_3
    if-ltz v17, :cond_f

    .line 423
    aget-object v20, v18, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DefaultFastScroller;->mSectionText:Ljava/lang/String;

    .line 424
    .local v19, text:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    :cond_7
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DefaultFastScroller;->mDrawOverlay:Z

    .line 429
    .end local v19           #text:Ljava/lang/String;
    :goto_5
    return-void

    .line 393
    .restart local v4       #exactSection:I
    .restart local v6       #fNext:F
    .restart local v7       #fPrev:F
    .restart local v10       #nSections:I
    .restart local v11       #nextIndex:I
    .restart local v12       #nextNextSection:I
    .restart local v13       #nextSection:I
    .restart local v14       #prevIndex:I
    .restart local v15       #prevSection:I
    .restart local v16       #section:I
    .restart local p1
    :cond_8
    sub-int v20, v11, v14

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v21, p1, v7

    mul-float v20, v20, v21

    sub-float v21, v6, v7

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v9, v14, v20

    goto/16 :goto_2

    .line 403
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DefaultFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DefaultFastScroller;->mScrollOffset:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_3

    .line 406
    .restart local p1
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DefaultFastScroller;->mListOffset:I

    move/from16 v21, v0

    add-int v21, v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView;->setSelection(I)V

    goto/16 :goto_3

    .line 409
    .end local v4           #exactSection:I
    .end local v6           #fNext:F
    .end local v7           #fPrev:F
    .end local v9           #index:I
    .end local v10           #nSections:I
    .end local v11           #nextIndex:I
    .end local v12           #nextNextSection:I
    .end local v13           #nextSection:I
    .end local v14           #prevIndex:I
    .end local v15           #prevSection:I
    .end local v16           #section:I
    .end local v17           #sectionIndex:I
    :cond_b
    move v0, v3

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move v9, v0

    .line 410
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    move-object v5, v0

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 412
    .restart local v5       #expList:Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DefaultFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v9

    invoke-static/range {v20 .. v20}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    move-object v0, v5

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DefaultFastScroller;->mScrollOffset:I

    move/from16 v21, v0

    move-object v0, v5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 419
    .end local v5           #expList:Landroid/widget/ExpandableListView;
    .end local p1
    :goto_6
    const/16 v17, -0x1

    .restart local v17       #sectionIndex:I
    goto/16 :goto_3

    .line 414
    .end local v17           #sectionIndex:I
    .restart local p1
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DefaultFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DefaultFastScroller;->mScrollOffset:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 417
    .restart local p1
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DefaultFastScroller;->mListOffset:I

    move/from16 v21, v0

    add-int v21, v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_6

    .line 424
    .end local p1
    .restart local v17       #sectionIndex:I
    .restart local v19       #text:Ljava/lang/String;
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 427
    .end local v19           #text:Ljava/lang/String;
    :cond_f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DefaultFastScroller;->mDrawOverlay:Z

    goto/16 :goto_5
.end method

.method private isPointInside(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 509
    iget-object v0, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/DefaultFastScroller;->mThumbW:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/DefaultFastScroller;->mThumbY:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/DefaultFastScroller;->mThumbY:I

    iget v1, p0, Landroid/widget/DefaultFastScroller;->mThumbH:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    .line 139
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 141
    .local v0, viewWidth:I
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/DefaultFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/DefaultFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 143
    return-void
.end method

.method private setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    :pswitch_0
    iput p1, p0, Landroid/widget/DefaultFastScroller;->mState:I

    .line 132
    return-void

    .line 112
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/DefaultFastScroller;->mDrawOverlay:Z

    .line 113
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/DefaultFastScroller;->mScrollFade:Landroid/widget/DefaultFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0

    .line 117
    :pswitch_2
    iget v1, p0, Landroid/widget/DefaultFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 118
    invoke-direct {p0}, Landroid/widget/DefaultFastScroller;->resetThumbPos()V

    .line 122
    :cond_1
    :pswitch_3
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/DefaultFastScroller;->mScrollFade:Landroid/widget/DefaultFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 125
    :pswitch_4
    iget-boolean v1, p0, Landroid/widget/DefaultFastScroller;->mIsThumbHidden:Z

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 127
    .local v0, viewWidth:I
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    iget v2, p0, Landroid/widget/DefaultFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Landroid/widget/DefaultFastScroller;->mThumbY:I

    iget v4, p0, Landroid/widget/DefaultFastScroller;->mThumbY:I

    iget v5, p0, Landroid/widget/DefaultFastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 146
    iput-object p2, p0, Landroid/widget/DefaultFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/DefaultFastScroller;->mThumbW:I

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/DefaultFastScroller;->mThumbH:I

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DefaultFastScroller;->mChangedBounds:Z

    .line 152
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 194
    iget-boolean v8, p0, Landroid/widget/DefaultFastScroller;->mDrawOverlay:Z

    if-eqz v8, :cond_0

    .line 195
    iget-object v8, p0, Landroid/widget/DefaultFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 196
    iget-object v3, p0, Landroid/widget/DefaultFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 197
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v1

    .line 198
    .local v1, descent:F
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 199
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v8, p0, Landroid/widget/DefaultFastScroller;->mSectionText:Ljava/lang/String;

    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    iget v11, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    div-int/lit8 v10, v10, 0x2

    iget v11, p0, Landroid/widget/DefaultFastScroller;->mOverlaySize:I

    div-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    int-to-float v10, v10

    sub-float/2addr v10, v1

    invoke-virtual {p1, v8, v9, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 203
    .end local v1           #descent:F
    .end local v3           #paint:Landroid/graphics/Paint;
    .end local v4           #rectF:Landroid/graphics/RectF;
    :cond_0
    iget v8, p0, Landroid/widget/DefaultFastScroller;->mState:I

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Landroid/widget/DefaultFastScroller;->mIsThumbHidden:Z

    if-eqz v8, :cond_2

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    iget v7, p0, Landroid/widget/DefaultFastScroller;->mThumbY:I

    .line 209
    .local v7, y:I
    iget-object v8, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    .line 210
    .local v6, viewWidth:I
    iget-object v5, p0, Landroid/widget/DefaultFastScroller;->mScrollFade:Landroid/widget/DefaultFastScroller$ScrollFade;

    .line 212
    .local v5, scrollFade:Landroid/widget/DefaultFastScroller$ScrollFade;
    const/4 v0, -0x1

    .line 213
    .local v0, alpha:I
    iget v8, p0, Landroid/widget/DefaultFastScroller;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 214
    invoke-virtual {v5}, Landroid/widget/DefaultFastScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 215
    const/16 v8, 0x68

    if-ge v0, v8, :cond_3

    .line 216
    iget-object v8, p0, Landroid/widget/DefaultFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v9, v0, 0x2

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    :cond_3
    iget v8, p0, Landroid/widget/DefaultFastScroller;->mThumbW:I

    mul-int/2addr v8, v0

    div-int/lit16 v8, v8, 0xd0

    sub-int v2, v6, v8

    .line 219
    .local v2, left:I
    iget-object v8, p0, Landroid/widget/DefaultFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/DefaultFastScroller;->mThumbH:I

    invoke-virtual {v8, v2, v9, v6, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/DefaultFastScroller;->mChangedBounds:Z

    .line 223
    .end local v2           #left:I
    :cond_4
    const/4 v8, 0x0

    int-to-float v9, v7

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    iget-object v8, p0, Landroid/widget/DefaultFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    const/4 v8, 0x0

    neg-int v9, v7

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 227
    iget v8, p0, Landroid/widget/DefaultFastScroller;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 228
    if-nez v0, :cond_5

    .line 229
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Landroid/widget/DefaultFastScroller;->setState(I)V

    goto :goto_0

    .line 231
    :cond_5
    iget-object v8, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    iget v9, p0, Landroid/widget/DefaultFastScroller;->mThumbW:I

    sub-int v9, v6, v9

    iget v10, p0, Landroid/widget/DefaultFastScroller;->mThumbH:I

    add-int/2addr v10, v7

    invoke-virtual {v8, v9, v7, v6, v10}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public drawThumb(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 572
    iput-object p1, p0, Landroid/widget/DefaultFastScroller;->mSectionText:Ljava/lang/String;

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DefaultFastScroller;->mDrawOverlay:Z

    .line 574
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/DefaultFastScroller;->setState(I)V

    .line 575
    iget-object v0, p0, Landroid/widget/DefaultFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mScrollFade:Landroid/widget/DefaultFastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 576
    return-void
.end method

.method public hideThumb()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DefaultFastScroller;->mIsThumbHidden:Z

    .line 107
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/widget/DefaultFastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 439
    iget v0, p0, Landroid/widget/DefaultFastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/DefaultFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/widget/DefaultFastScroller;->setState(I)V

    .line 442
    const/4 v0, 0x1

    .line 445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    iget-boolean v0, p0, Landroid/widget/DefaultFastScroller;->mIsThumbHidden:Z

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget v0, p0, Landroid/widget/DefaultFastScroller;->mItemCount:I

    if-eq v0, p4, :cond_2

    if-lez p3, :cond_2

    .line 259
    iput p4, p0, Landroid/widget/DefaultFastScroller;->mItemCount:I

    .line 260
    iget v0, p0, Landroid/widget/DefaultFastScroller;->mItemCount:I

    div-int/2addr v0, p3

    sget v1, Landroid/widget/DefaultFastScroller;->MIN_PAGES:I

    if-lt v0, v1, :cond_3

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Landroid/widget/DefaultFastScroller;->mLongList:Z

    .line 262
    :cond_2
    iget-boolean v0, p0, Landroid/widget/DefaultFastScroller;->mLongList:Z

    if-nez v0, :cond_4

    .line 263
    iget v0, p0, Landroid/widget/DefaultFastScroller;->mState:I

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0, v2}, Landroid/widget/DefaultFastScroller;->setState(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 260
    goto :goto_1

    .line 268
    :cond_4
    sub-int v0, p4, p3

    if-lez v0, :cond_5

    iget v0, p0, Landroid/widget/DefaultFastScroller;->mState:I

    if-eq v0, v4, :cond_5

    .line 269
    iget-object v0, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/DefaultFastScroller;->mThumbH:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int v1, p4, p3

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/DefaultFastScroller;->mThumbY:I

    .line 271
    iget-boolean v0, p0, Landroid/widget/DefaultFastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_5

    .line 272
    invoke-direct {p0}, Landroid/widget/DefaultFastScroller;->resetThumbPos()V

    .line 273
    iput-boolean v2, p0, Landroid/widget/DefaultFastScroller;->mChangedBounds:Z

    .line 276
    :cond_5
    iput-boolean v3, p0, Landroid/widget/DefaultFastScroller;->mScrollCompleted:Z

    .line 277
    iget v0, p0, Landroid/widget/DefaultFastScroller;->mVisibleItem:I

    if-eq p2, v0, :cond_0

    .line 280
    iput p2, p0, Landroid/widget/DefaultFastScroller;->mVisibleItem:I

    .line 281
    iget v0, p0, Landroid/widget/DefaultFastScroller;->mState:I

    if-eq v0, v4, :cond_0

    .line 282
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/DefaultFastScroller;->setState(I)V

    .line 283
    iget-object v0, p0, Landroid/widget/DefaultFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mScrollFade:Landroid/widget/DefaultFastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 237
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/DefaultFastScroller;->mThumbW:I

    sub-int v2, p1, v2

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/DefaultFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    :cond_0
    iget-object v0, p0, Landroid/widget/DefaultFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 241
    .local v0, pos:Landroid/graphics/RectF;
    int-to-float v1, p1

    iget v2, p0, Landroid/widget/DefaultFastScroller;->mOverlayPosition:F

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/widget/DefaultFastScroller;->mOverlaySize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 242
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/widget/DefaultFastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 243
    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 244
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/widget/DefaultFastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 245
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 249
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "me"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 449
    iget v4, p0, Landroid/widget/DefaultFastScroller;->mState:I

    if-nez v4, :cond_0

    move v4, v6

    .line 505
    :goto_0
    return v4

    .line 453
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 455
    .local v0, action:I
    if-nez v0, :cond_3

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/widget/DefaultFastScroller;->isPointInside(FF)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 457
    invoke-direct {p0, v9}, Landroid/widget/DefaultFastScroller;->setState(I)V

    .line 458
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v4, :cond_1

    .line 459
    invoke-direct {p0}, Landroid/widget/DefaultFastScroller;->getSectionsFromIndexer()V

    .line 461
    :cond_1
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v4, :cond_2

    .line 462
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4, v7}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 463
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 466
    :cond_2
    invoke-direct {p0}, Landroid/widget/DefaultFastScroller;->cancelFling()V

    move v4, v7

    .line 467
    goto :goto_0

    .line 469
    :cond_3
    if-ne v0, v7, :cond_5

    .line 470
    iget v4, p0, Landroid/widget/DefaultFastScroller;->mState:I

    if-ne v4, v9, :cond_a

    .line 471
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v4, :cond_4

    .line 475
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 476
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 478
    :cond_4
    invoke-direct {p0, v8}, Landroid/widget/DefaultFastScroller;->setState(I)V

    .line 479
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mHandler:Landroid/os/Handler;

    .line 480
    .local v1, handler:Landroid/os/Handler;
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mScrollFade:Landroid/widget/DefaultFastScroller$ScrollFade;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 481
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mScrollFade:Landroid/widget/DefaultFastScroller$ScrollFade;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v4, v7

    .line 482
    goto :goto_0

    .line 484
    .end local v1           #handler:Landroid/os/Handler;
    :cond_5
    if-ne v0, v8, :cond_a

    .line 485
    iget v4, p0, Landroid/widget/DefaultFastScroller;->mState:I

    if-ne v4, v9, :cond_a

    .line 486
    iget-object v4, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 488
    .local v3, viewHeight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Landroid/widget/DefaultFastScroller;->mThumbH:I

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, 0xa

    .line 489
    .local v2, newThumbY:I
    if-gez v2, :cond_7

    .line 490
    const/4 v2, 0x0

    .line 494
    :cond_6
    :goto_1
    iget v4, p0, Landroid/widget/DefaultFastScroller;->mThumbY:I

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v8, :cond_8

    move v4, v7

    .line 495
    goto :goto_0

    .line 491
    :cond_7
    iget v4, p0, Landroid/widget/DefaultFastScroller;->mThumbH:I

    add-int/2addr v4, v2

    if-le v4, v3, :cond_6

    .line 492
    iget v4, p0, Landroid/widget/DefaultFastScroller;->mThumbH:I

    sub-int v2, v3, v4

    goto :goto_1

    .line 497
    :cond_8
    iput v2, p0, Landroid/widget/DefaultFastScroller;->mThumbY:I

    .line 499
    iget-boolean v4, p0, Landroid/widget/DefaultFastScroller;->mScrollCompleted:Z

    if-eqz v4, :cond_9

    .line 500
    iget v4, p0, Landroid/widget/DefaultFastScroller;->mThumbY:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/DefaultFastScroller;->mThumbH:I

    sub-int v5, v3, v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-direct {p0, v4}, Landroid/widget/DefaultFastScroller;->internalScrollTo(F)V

    :cond_9
    move v4, v7

    .line 502
    goto/16 :goto_0

    .end local v2           #newThumbY:I
    .end local v3           #viewHeight:I
    :cond_a
    move v4, v6

    .line 505
    goto/16 :goto_0
.end method

.method public scrollTo(F)V
    .locals 4
    .parameter "position"

    .prologue
    .line 315
    iget-object v0, p0, Landroid/widget/DefaultFastScroller;->mHandler:Landroid/os/Handler;

    .line 316
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mScrollFade:Landroid/widget/DefaultFastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mScrollFade:Landroid/widget/DefaultFastScroller$ScrollFade;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v1, :cond_1

    .line 319
    invoke-direct {p0}, Landroid/widget/DefaultFastScroller;->getSectionsFromIndexer()V

    .line 323
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/DefaultFastScroller;->internalScrollTo(F)V

    .line 324
    return-void

    .line 320
    :cond_1
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mSections:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/widget/DefaultFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 321
    iget-object v1, p0, Landroid/widget/DefaultFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DefaultFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public setOverlayDrawable(IIF)V
    .locals 2
    .parameter "resId"
    .parameter "size"
    .parameter "position"

    .prologue
    .line 564
    iget-object v0, p0, Landroid/widget/DefaultFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DefaultFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 565
    iput p2, p0, Landroid/widget/DefaultFastScroller;->mOverlaySize:I

    .line 566
    iput p3, p0, Landroid/widget/DefaultFastScroller;->mOverlayPosition:F

    .line 567
    iget-object v0, p0, Landroid/widget/DefaultFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/DefaultFastScroller;->mOverlaySize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 568
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 559
    iput p1, p0, Landroid/widget/DefaultFastScroller;->mScrollOffset:I

    .line 560
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/DefaultFastScroller;->setState(I)V

    .line 186
    return-void
.end method
