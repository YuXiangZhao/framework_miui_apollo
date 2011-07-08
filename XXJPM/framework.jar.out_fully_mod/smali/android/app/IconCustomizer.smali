.class public Landroid/app/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# static fields
.field private static final sAlphaShift:I = 0x18

.field private static sCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sCanvas:Landroid/graphics/Canvas; = null

.field private static final sColorShift:I = 0x8

.field private static final sCustomizedIconHeight:I = 0x5a

.field private static final sCustomizedIconWidth:I = 0x5a

.field private static sDensity:I = 0x0

.field private static final sIconHeight:I = 0x48

.field private static final sIconWidth:I = 0x48

.field private static final sOldBounds:Landroid/graphics/Rect; = null

.field private static final sPathPrefix:Ljava/lang/String; = "/data/system/customized_icons_1/"

.field private static final sRGBMask:I = 0xffffff

.field private static sSystemResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Landroid/app/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    .line 45
    sget-object v0, Landroid/app/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Landroid/app/IconCustomizer;->sDensity:I

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/app/IconCustomizer;->sOldBounds:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Landroid/app/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 50
    sget-object v0, Landroid/app/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    sget v1, Landroid/app/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 51
    sget-object v0, Landroid/app/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/IconCustomizer;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static RGBToColor([I)I
    .locals 2
    .parameter "RGB"

    .prologue
    .line 441
    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget v1, p0, v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    aget v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static clearCustomizedIcons(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 78
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/customized_icons_1/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, file:Ljava/io/File;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 84
    .local v2, matchedFiles:[Ljava/io/File;
    sget-object v3, Landroid/app/IconCustomizer;->sCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 95
    :goto_0
    if-eqz v2, :cond_1

    .line 96
    array-length v3, v2

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_1

    .line 97
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 96
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 87
    .end local v1           #i:I
    .end local v2           #matchedFiles:[Ljava/io/File;
    :cond_0
    new-instance v3, Landroid/app/IconCustomizer$1;

    invoke-direct {v3, p0}, Landroid/app/IconCustomizer$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .restart local v2       #matchedFiles:[Ljava/io/File;
    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method private static colorToRGB(I)[I
    .locals 3
    .parameter "color"

    .prologue
    .line 433
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0xff

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x2

    and-int/lit16 v2, p0, 0xff

    aput v2, v0, v1

    return-object v0
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 33
    .parameter "base"

    .prologue
    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 256
    .local v10, baseWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 257
    .local v14, baseHeight:I
    mul-int v8, v10, v14

    new-array v8, v8, [I

    .line 258
    .local v8, basePixels:[I
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 262
    invoke-static {v10, v14, v8}, Landroid/app/IconCustomizer;->cutEdge(II[I)V

    .line 265
    const/4 v9, 0x0

    .line 266
    .local v9, sum:I
    const/16 p0, 0x3

    move/from16 v0, p0

    new-array v0, v0, [I

    move-object v12, v0

    .end local p0
    fill-array-data v12, :array_0

    .line 268
    .local v12, sumRGB:[I
    mul-int p0, v10, v14

    const/4 v11, 0x1

    sub-int p0, p0, v11

    .local p0, i:I
    move v11, v9

    .end local v9           #sum:I
    .local v11, sum:I
    move/from16 v9, p0

    .end local p0           #i:I
    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_1

    .line 269
    aget p0, v8, v9

    const v13, 0xffffff

    and-int p0, p0, v13

    .line 271
    .local p0, color:I
    if-lez p0, :cond_0

    .line 272
    invoke-static/range {p0 .. p0}, Landroid/app/IconCustomizer;->colorToRGB(I)[I

    move-result-object p0

    .line 273
    .local p0, RGB:[I
    const/4 v13, 0x0

    aget v15, v12, v13

    const/16 v16, 0x0

    aget v16, p0, v16

    add-int v15, v15, v16

    aput v15, v12, v13

    .line 274
    const/4 v13, 0x1

    aget v15, v12, v13

    const/16 v16, 0x1

    aget v16, p0, v16

    add-int v15, v15, v16

    aput v15, v12, v13

    .line 275
    const/4 v13, 0x2

    aget v15, v12, v13

    const/16 v16, 0x2

    aget p0, p0, v16

    .end local p0           #RGB:[I
    add-int p0, p0, v15

    aput p0, v12, v13

    .line 276
    add-int/lit8 p0, v11, 0x1

    .end local v11           #sum:I
    .local p0, sum:I
    move/from16 v11, p0

    .line 268
    .end local p0           #sum:I
    .restart local v11       #sum:I
    :cond_0
    add-int/lit8 p0, v9, -0x1

    .end local v9           #i:I
    .local p0, i:I
    move/from16 v9, p0

    .end local p0           #i:I
    .restart local v9       #i:I
    goto :goto_0

    .line 279
    :cond_1
    if-lez v11, :cond_2

    .line 280
    const/16 p0, 0x0

    aget v9, v12, p0

    .end local v9           #i:I
    div-int/2addr v9, v11

    aput v9, v12, p0

    .line 281
    const/16 p0, 0x1

    aget v9, v12, p0

    div-int/2addr v9, v11

    aput v9, v12, p0

    .line 282
    const/16 p0, 0x2

    aget v9, v12, p0

    div-int/2addr v9, v11

    aput v9, v12, p0

    .line 286
    :cond_2
    invoke-static {v12}, Landroid/app/IconCustomizer;->RGBToColor([I)I

    move-result p0

    .line 287
    .local p0, color:I
    invoke-static/range {p0 .. p0}, Landroid/app/IconCustomizer;->getSaturation(I)F

    move-result v9

    float-to-double v12, v9

    const-wide v15, 0x3f947ae147ae147bL

    cmpg-double v9, v12, v15

    if-gez v9, :cond_3

    .line 288
    .end local v12           #sumRGB:[I
    const/16 p0, 0x0

    move v9, v11

    .line 319
    .end local v11           #sum:I
    .local v9, sum:I
    :goto_1
    invoke-static/range {p0 .. p0}, Landroid/app/IconCustomizer;->colorToRGB(I)[I

    move-result-object v12

    .line 322
    .restart local v12       #sumRGB:[I
    const/16 v9, 0x5a

    const/16 v11, 0x5a

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v9           #sum:I
    invoke-static {v9, v11, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 323
    .local v11, result:Landroid/graphics/Bitmap;
    sget v9, Landroid/app/IconCustomizer;->sDensity:I

    invoke-virtual {v11, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 324
    new-instance v23, Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 327
    .local v23, canvas:Landroid/graphics/Canvas;
    const-string v9, "icon_background.png"

    invoke-static {v9}, Landroid/app/IconCustomizer;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 328
    .local v15, background:Landroid/graphics/Bitmap;
    if-eqz v15, :cond_8

    .line 329
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 330
    .local v18, backgroundWidth:I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 331
    .local v22, backgroundHeight:I
    mul-int v9, v18, v22

    move v0, v9

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 332
    .local v16, backgroundPixels:[I
    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v18

    invoke-virtual/range {v15 .. v22}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 333
    mul-int v9, v18, v22

    const/4 v13, 0x1

    sub-int/2addr v9, v13

    .end local v15           #background:Landroid/graphics/Bitmap;
    .local v9, i:I
    :goto_2
    if-ltz v9, :cond_7

    .line 334
    aget p0, v16, v9

    .line 336
    const/high16 v13, -0x100

    and-int v13, v13, p0

    const/high16 v15, 0xff

    and-int v15, v15, p0

    const/16 v17, 0x0

    aget v17, v12, v17

    mul-int v15, v15, v17

    ushr-int/lit8 v15, v15, 0x8

    const/high16 v17, 0xff

    and-int v15, v15, v17

    or-int/2addr v13, v15

    const v15, 0xff00

    and-int v15, v15, p0

    const/16 v17, 0x1

    aget v17, v12, v17

    mul-int v15, v15, v17

    ushr-int/lit8 v15, v15, 0x8

    const v17, 0xff00

    and-int v15, v15, v17

    or-int/2addr v13, v15

    move/from16 v0, p0

    and-int/lit16 v0, v0, 0xff

    move v15, v0

    const/16 v17, 0x2

    aget v17, v12, v17

    mul-int v15, v15, v17

    ushr-int/lit8 v15, v15, 0x8

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v13, v15

    aput v13, v16, v9

    .line 333
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 292
    .end local v9           #i:I
    .end local v12           #sumRGB:[I
    .end local v16           #backgroundPixels:[I
    .end local v18           #backgroundWidth:I
    .end local v22           #backgroundHeight:I
    .end local v23           #canvas:Landroid/graphics/Canvas;
    .local v11, sum:I
    :cond_3
    const/4 v9, 0x2

    new-array v13, v9, [[I

    const/4 v9, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [I

    .end local v11           #sum:I
    fill-array-data v11, :array_1

    aput-object v11, v13, v9

    const/4 v9, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_2

    aput-object v11, v13, v9

    .line 296
    .local v13, mappingSections:[[I
    const/4 v11, 0x0

    .line 297
    .restart local v11       #sum:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    move v15, v11

    .end local v11           #sum:I
    .local v15, sum:I
    :goto_3
    array-length v11, v13

    if-ge v9, v11, :cond_4

    .line 298
    aget-object v11, v13, v9

    const/4 v12, 0x1

    aget v11, v11, v12

    aget-object v12, v13, v9

    const/16 v16, 0x0

    aget v12, v12, v16

    sub-int/2addr v11, v12

    add-int/2addr v11, v15

    .line 297
    .end local v15           #sum:I
    .restart local v11       #sum:I
    add-int/lit8 v9, v9, 0x1

    move v15, v11

    .end local v11           #sum:I
    .restart local v15       #sum:I
    goto :goto_3

    .line 301
    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/app/IconCustomizer;->getHue(I)F

    move-result v9

    .line 302
    .local v9, hue:F
    int-to-float v11, v15

    mul-float/2addr v9, v11

    const/high16 v11, 0x43b4

    div-float/2addr v9, v11

    .line 303
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    array-length v12, v13

    if-ge v11, v12, :cond_6

    .line 304
    aget-object v12, v13, v11

    const/16 v16, 0x1

    aget v12, v12, v16

    aget-object v16, v13, v11

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-int v12, v12, v16

    .line 305
    .local v12, length:I
    move v0, v12

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v16, v9, v16

    if-lez v16, :cond_5

    .line 306
    int-to-float v12, v12

    sub-float/2addr v9, v12

    .line 303
    .end local v12           #length:I
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 309
    .restart local v12       #length:I
    :cond_5
    aget-object v11, v13, v11

    .end local v11           #i:I
    const/4 v12, 0x0

    aget v11, v11, v12

    .end local v12           #length:I
    int-to-float v11, v11

    add-float/2addr v9, v11

    .line 313
    :cond_6
    move/from16 v0, p0

    move v1, v9

    invoke-static {v0, v1}, Landroid/app/IconCustomizer;->setHue(IF)I

    move-result p0

    .line 316
    const v9, 0x3f19999a

    move/from16 v0, p0

    move v1, v9

    invoke-static {v0, v1}, Landroid/app/IconCustomizer;->setValue(IF)I

    .end local v9           #hue:F
    move-result p0

    .line 317
    const v9, 0x3ecccccd

    move/from16 v0, p0

    move v1, v9

    invoke-static {v0, v1}, Landroid/app/IconCustomizer;->setSaturation(IF)I

    move-result p0

    move v9, v15

    .end local v15           #sum:I
    .local v9, sum:I
    goto/16 :goto_1

    .line 343
    .end local v13           #mappingSections:[[I
    .local v9, i:I
    .local v11, result:Landroid/graphics/Bitmap;
    .local v12, sumRGB:[I
    .restart local v16       #backgroundPixels:[I
    .restart local v18       #backgroundWidth:I
    .restart local v22       #backgroundHeight:I
    .restart local v23       #canvas:Landroid/graphics/Canvas;
    :cond_7
    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v24, v16

    move/from16 v26, v18

    move/from16 v29, v18

    move/from16 v30, v22

    invoke-virtual/range {v23 .. v32}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 347
    .end local v9           #i:I
    .end local v16           #backgroundPixels:[I
    .end local v18           #backgroundWidth:I
    .end local v22           #backgroundHeight:I
    :cond_8
    const-string p0, "icon_pattern.png"

    .end local p0           #color:I
    invoke-static/range {p0 .. p0}, Landroid/app/IconCustomizer;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 348
    .local p0, pattern:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_9

    .line 349
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move v2, v9

    move v3, v12

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 353
    .end local v12           #sumRGB:[I
    :cond_9
    const/16 v25, 0x0

    const/16 p0, 0x5a

    sub-int p0, p0, v10

    div-int/lit8 v27, p0, 0x2

    .end local p0           #pattern:Landroid/graphics/Bitmap;
    const/16 p0, 0x5a

    sub-int p0, p0, v14

    div-int/lit8 v28, p0, 0x2

    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v24, v8

    move/from16 v26, v10

    move/from16 v29, v10

    move/from16 v30, v14

    invoke-virtual/range {v23 .. v32}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 360
    const-string p0, "icon_border.png"

    invoke-static/range {p0 .. p0}, Landroid/app/IconCustomizer;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 361
    .local p0, foreground:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_a

    .line 362
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move v2, v8

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 365
    .end local v8           #basePixels:[I
    .end local v10           #baseWidth:I
    :cond_a
    return-object v11

    .line 266
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 292
    :array_1
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xbet 0x0t 0x0t 0x0t
        0x13t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method private static composeShortcutIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "base"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x5a

    const/4 v2, 0x0

    const/4 v13, 0x0

    .line 370
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 371
    .local v3, baseWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 372
    .local v7, baseHeight:I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .local v1, basePixels:[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 373
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 374
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 377
    invoke-static {v3, v7, v1}, Landroid/app/IconCustomizer;->cutEdge(II[I)V

    .line 380
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 381
    .local v12, result:Landroid/graphics/Bitmap;
    sget v4, Landroid/app/IconCustomizer;->sDensity:I

    invoke-virtual {v12, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 382
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 385
    .local v0, canvas:Landroid/graphics/Canvas;
    const-string v4, "icon_shortcut.png"

    invoke-static {v4}, Landroid/app/IconCustomizer;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 386
    .local v10, background:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_0

    .line 387
    invoke-virtual {v0, v10, v13, v13, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 391
    :cond_0
    sub-int v4, v8, v3

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v8, v7

    div-int/lit8 v5, v5, 0x2

    const/4 v8, 0x1

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 398
    const-string v2, "icon_shortcut_arrow.png"

    invoke-static {v2}, Landroid/app/IconCustomizer;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 399
    .local v11, foreground:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_1

    .line 400
    invoke-virtual {v0, v11, v13, v13, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 403
    :cond_1
    return-object v12
.end method

.method private static cutEdge(II[I)V
    .locals 11
    .parameter "baseWidth"
    .parameter "baseHeight"
    .parameter "basePixels"

    .prologue
    .line 408
    const-string v2, "icon_mask.png"

    invoke-static {v2}, Landroid/app/IconCustomizer;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 409
    .local v0, alphaCutter:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 430
    :cond_0
    return-void

    .line 411
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 412
    .local v9, alphaWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 413
    .local v8, alphaHeight:I
    if-lt v9, p0, :cond_0

    if-lt v8, p1, :cond_0

    .line 415
    mul-int v2, v9, v8

    new-array v1, v2, [I

    .line 416
    .local v1, alphaPixels:[I
    const/4 v2, 0x0

    sub-int v3, v9, p0

    div-int/lit8 v4, v3, 0x2

    sub-int v3, v8, p1

    div-int/lit8 v5, v3, 0x2

    move v3, p0

    move v6, p0

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 423
    mul-int v2, p0, p1

    const/4 v3, 0x1

    sub-int v10, v2, v3

    .local v10, i:I
    :goto_0
    if-ltz v10, :cond_0

    .line 424
    aget v2, p2, v10

    const v3, 0xffffff

    aget v4, p2, v10

    ushr-int/lit8 v4, v4, 0x18

    aget v5, v1, v10

    ushr-int/lit8 v5, v5, 0x18

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    and-int/2addr v2, v3

    aput v2, p2, v10

    .line 423
    add-int/lit8 v10, v10, -0x1

    goto :goto_0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "icon"

    .prologue
    .line 192
    sget-object v9, Landroid/app/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v9

    .line 193
    const/16 v2, 0x48

    .line 194
    .local v2, targetWidth:I
    const/16 v1, 0x48

    .line 195
    .local v1, targetHeight:I
    :try_start_0
    sget-object v3, Landroid/app/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    const-string v4, "icon_mask.png"

    invoke-static {v3, v4}, Landroid/app/ThemeResource;->has3rdPartyAppIcon(Landroid/content/res/Resources;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_7

    .line 196
    const/16 v2, 0x5a

    .line 197
    const/16 v1, 0x5a

    move v5, v1

    .end local v1           #targetHeight:I
    .local v5, targetHeight:I
    move v6, v2

    .line 200
    .end local v2           #targetWidth:I
    .local v6, targetWidth:I
    :goto_0
    move v7, v6

    .line 201
    .local v7, width:I
    move v3, v5

    .line 203
    .local v3, height:I
    :try_start_1
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_2

    .line 204
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v1, v0

    .line 205
    .local v1, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 206
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 215
    .end local v1           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 216
    .local v4, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 218
    .local v2, sourceHeight:I
    if-lez v4, :cond_5

    if-lez v4, :cond_5

    .line 220
    if-lt v7, v4, :cond_1

    if-ge v3, v2, :cond_4

    .line 222
    :cond_1
    int-to-float v1, v4

    int-to-float v8, v2

    div-float/2addr v1, v8

    .line 223
    .local v1, ratio:F
    if-le v4, v2, :cond_3

    .line 224
    int-to-float v2, v7

    div-float v1, v2, v1

    float-to-int v1, v1

    .end local v3           #height:I
    .local v1, height:I
    move v2, v7

    .end local v7           #width:I
    .local v2, width:I
    :goto_2
    move v3, v1

    .end local v1           #height:I
    .restart local v3       #height:I
    move v8, v2

    .line 235
    .end local v2           #width:I
    .local v8, width:I
    :goto_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 236
    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget v2, Landroid/app/IconCustomizer;->sDensity:I

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 238
    sget-object v2, Landroid/app/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 239
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    sub-int v4, v6, v8

    div-int/lit8 v4, v4, 0x2

    .line 242
    .local v4, left:I
    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    .line 244
    .local v7, top:I
    sget-object v10, Landroid/app/IconCustomizer;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 245
    add-int/2addr v8, v4

    add-int/2addr v3, v7

    invoke-virtual {p0, v4, v7, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 246
    .end local v3           #height:I
    .end local v8           #width:I
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 247
    sget-object v2, Landroid/app/IconCustomizer;->sOldBounds:Landroid/graphics/Rect;

    .end local v2           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 249
    monitor-exit v9

    return-object v1

    .line 207
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #left:I
    .restart local v3       #height:I
    .local v7, width:I
    :cond_2
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 209
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 210
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 211
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 212
    sget-object v1, Landroid/app/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 250
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #height:I
    .end local v7           #width:I
    :catchall_0
    move-exception p0

    move-object v2, p0

    move v1, v6

    .end local v6           #targetWidth:I
    .local v1, targetWidth:I
    move p0, v5

    .end local v5           #targetHeight:I
    .local p0, targetHeight:I
    :goto_4
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 225
    .local v1, ratio:F
    .local v2, sourceHeight:I
    .restart local v3       #height:I
    .local v4, sourceWidth:I
    .restart local v5       #targetHeight:I
    .restart local v6       #targetWidth:I
    .restart local v7       #width:I
    .local p0, icon:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-le v2, v4, :cond_6

    .line 226
    int-to-float v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .end local v7           #width:I
    .local v1, width:I
    move v2, v1

    .end local v1           #width:I
    .local v2, width:I
    move v1, v3

    .end local v3           #height:I
    .local v1, height:I
    goto :goto_2

    .line 228
    .end local v1           #height:I
    .local v2, sourceHeight:I
    .restart local v3       #height:I
    .restart local v7       #width:I
    :cond_4
    if-ge v4, v7, :cond_5

    if-ge v2, v3, :cond_5

    .line 230
    move v3, v4

    .line 231
    .end local v7           #width:I
    .local v3, width:I
    move v1, v2

    .restart local v1       #height:I
    move v8, v3

    .end local v3           #width:I
    .restart local v8       #width:I
    move v3, v1

    .end local v1           #height:I
    .local v3, height:I
    goto :goto_3

    .line 250
    .end local v3           #height:I
    .end local v4           #sourceWidth:I
    .end local v5           #targetHeight:I
    .end local v6           #targetWidth:I
    .end local v8           #width:I
    .local v1, targetHeight:I
    .local v2, targetWidth:I
    :catchall_1
    move-exception p0

    move-object v12, p0

    move p0, v1

    .end local v1           #targetHeight:I
    .local p0, targetHeight:I
    move v1, v2

    .end local v2           #targetWidth:I
    .local v1, targetWidth:I
    move-object v2, v12

    goto :goto_4

    :catchall_2
    move-exception v2

    goto :goto_4

    .end local v1           #targetWidth:I
    .local v2, sourceHeight:I
    .restart local v3       #height:I
    .restart local v4       #sourceWidth:I
    .restart local v5       #targetHeight:I
    .restart local v6       #targetWidth:I
    .restart local v7       #width:I
    .local p0, icon:Landroid/graphics/drawable/Drawable;
    :cond_5
    move v8, v7

    .end local v7           #width:I
    .restart local v8       #width:I
    goto :goto_3

    .end local v8           #width:I
    .local v1, ratio:F
    .restart local v7       #width:I
    :cond_6
    move v1, v3

    .end local v3           #height:I
    .local v1, height:I
    move v2, v7

    .end local v7           #width:I
    .local v2, width:I
    goto :goto_2

    .end local v4           #sourceWidth:I
    .end local v5           #targetHeight:I
    .end local v6           #targetWidth:I
    .local v1, targetHeight:I
    .local v2, targetWidth:I
    :cond_7
    move v5, v1

    .end local v1           #targetHeight:I
    .restart local v5       #targetHeight:I
    move v6, v2

    .end local v2           #targetWidth:I
    .restart local v6       #targetWidth:I
    goto/16 :goto_0
.end method

.method public static generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "base"

    .prologue
    .line 180
    invoke-static {p0}, Landroid/app/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .local v0, icon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/app/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/app/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "base"

    .prologue
    .line 186
    invoke-static {p0}, Landroid/app/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    .local v0, icon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/app/IconCustomizer;->composeShortcutIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/app/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static getBuiltInIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 154
    sget-object v1, Landroid/app/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-static {p0, v3}, Landroid/app/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/ThemeResource;->get3rdPartyAppIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    .local v0, icon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/app/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "path"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, result:Landroid/graphics/Bitmap;
    sget-object v2, Landroid/app/IconCustomizer;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 61
    .local v1, soft:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 65
    .restart local v0       #result:Landroid/graphics/Bitmap;
    :cond_0
    if-nez v0, :cond_1

    .line 66
    sget-object v2, Landroid/app/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-static {v2, p0}, Landroid/app/ThemeResource;->get3rdPartyAppIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    sget-object v2, Landroid/app/IconCustomizer;->sCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1
    return-object v0
.end method

.method public static getCustomizedIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 159
    sget-object v3, Landroid/app/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-static {v3, p0}, Landroid/app/ThemeResource;->get3rdPartyAppIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    .local v0, icon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/customized_icons_1/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, pathName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, iconFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    .line 167
    sget v3, Landroid/app/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 176
    .end local v1           #iconFile:Ljava/io/File;
    .end local v2           #pathName:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 171
    .restart local v1       #iconFile:Ljava/io/File;
    .restart local v2       #pathName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 176
    .end local v1           #iconFile:Ljava/io/File;
    .end local v2           #pathName:Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v4, Landroid/app/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 74
    const-string v0, "%s.png"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move-object v3, p1

    :goto_0
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v3, p0

    goto :goto_0
.end method

.method private static getHue(I)F
    .locals 13
    .parameter "color"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x4270

    const/4 v9, 0x2

    .line 491
    invoke-static {p0}, Landroid/app/IconCustomizer;->colorToRGB(I)[I

    move-result-object v0

    .line 493
    .local v0, RGB:[I
    aget v6, v0, v11

    aget v7, v0, v12

    aget v8, v0, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 494
    .local v4, min:I
    aget v6, v0, v11

    aget v7, v0, v12

    aget v8, v0, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 496
    .local v3, max:I
    sub-int v5, v3, v4

    .line 497
    .local v5, range:I
    if-nez v5, :cond_0

    const/4 v6, 0x0

    .line 506
    :goto_0
    return v6

    .line 499
    :cond_0
    const/4 v2, 0x0

    .line 500
    .local v2, index:I
    :goto_1
    if-ge v2, v9, :cond_1

    aget v6, v0, v2

    if-eq v4, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 502
    :cond_1
    add-int/lit8 v6, v2, 0x1

    rem-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x78

    int-to-float v1, v6

    .line 503
    .local v1, hue:F
    add-int/lit8 v6, v2, 0x2

    rem-int/lit8 v6, v6, 0x3

    aget v6, v0, v6

    sub-int/2addr v6, v4

    int-to-float v6, v6

    mul-float/2addr v6, v10

    int-to-float v7, v5

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 504
    add-int/lit8 v6, v2, 0x1

    rem-int/lit8 v6, v6, 0x3

    aget v6, v0, v6

    sub-int v6, v3, v6

    int-to-float v6, v6

    mul-float/2addr v6, v10

    int-to-float v7, v5

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    move v6, v1

    .line 506
    goto :goto_0
.end method

.method private static getSaturation(I)F
    .locals 9
    .parameter "color"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 466
    invoke-static {p0}, Landroid/app/IconCustomizer;->colorToRGB(I)[I

    move-result-object v0

    .line 468
    .local v0, RGB:[I
    aget v3, v0, v6

    aget v4, v0, v7

    aget v5, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 469
    .local v2, min:I
    aget v3, v0, v6

    aget v4, v0, v7

    aget v5, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 470
    .local v1, max:I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    int-to-float v3, p0

    .line 472
    :goto_0
    return v3

    :cond_1
    const/high16 v3, 0x3f80

    sub-int v4, v1, v2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0
.end method

.method private static getValue(I)F
    .locals 5
    .parameter "color"

    .prologue
    .line 445
    invoke-static {p0}, Landroid/app/IconCustomizer;->colorToRGB(I)[I

    move-result-object v0

    .line 447
    .local v0, RGB:[I
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 448
    .local v1, max:I
    const/high16 v2, 0x3f80

    int-to-float v3, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x437f

    div-float/2addr v2, v3

    return v2
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 103
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    .local v2, launcherIntent:Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 107
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 109
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 110
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 112
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "fileName"
    .parameter "icon"

    .prologue
    .line 116
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/customized_icons_1/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, pathName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 122
    .local v2, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .local v3, outputStream:Ljava/io/FileOutputStream;
    const/16 v6, 0x1b4

    const/4 v7, -0x1

    const/4 v8, -0x1

    :try_start_2
    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    .line 130
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :goto_0
    if-nez v2, :cond_0

    .line 131
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 132
    .local v4, parent:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 133
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1fd

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 138
    new-instance v2, Ljava/io/FileOutputStream;

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 139
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    const/16 v6, 0x1b4

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 143
    .end local v4           #parent:Ljava/io/File;
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 144
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 145
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 151
    .end local v1           #file:Ljava/io/File;
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .end local v5           #pathName:Ljava/lang/String;
    :goto_1
    return-void

    .line 146
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 147
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 148
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 149
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    .restart local v5       #pathName:Ljava/lang/String;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    move-object v2, v3

    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static setHue(IF)I
    .locals 13
    .parameter "color"
    .parameter "hue"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/high16 v8, 0x43b4

    const/high16 v9, 0x4270

    .line 510
    invoke-static {p0}, Landroid/app/IconCustomizer;->colorToRGB(I)[I

    move-result-object v0

    .line 512
    .local v0, RGB:[I
    aget v5, v0, v11

    aget v6, v0, v12

    const/4 v7, 0x2

    aget v7, v0, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 513
    .local v3, min:I
    aget v5, v0, v11

    aget v6, v0, v12

    const/4 v7, 0x2

    aget v7, v0, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 515
    .local v2, max:I
    sub-int v4, v2, v3

    .line 516
    .local v4, range:I
    if-nez v4, :cond_0

    move v5, p0

    .line 529
    :goto_0
    return v5

    .line 518
    :cond_0
    :goto_1
    cmpg-float v5, p1, v10

    if-gez v5, :cond_1

    add-float/2addr p1, v8

    goto :goto_1

    .line 519
    :cond_1
    :goto_2
    cmpl-float v5, p1, v8

    if-lez v5, :cond_2

    sub-float/2addr p1, v8

    goto :goto_2

    .line 521
    :cond_2
    const/high16 v5, 0x42f0

    div-float v5, p1, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 522
    .local v1, index:I
    mul-int/lit8 v5, v1, 0x78

    int-to-float v5, v5

    sub-float/2addr p1, v5

    .line 523
    add-int/lit8 v5, v1, 0x2

    rem-int/lit8 v1, v5, 0x3

    .line 525
    aput v3, v0, v1

    .line 526
    add-int/lit8 v5, v1, 0x2

    rem-int/lit8 v5, v5, 0x3

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-static {p1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v0, v5

    .line 527
    add-int/lit8 v5, v1, 0x1

    rem-int/lit8 v5, v5, 0x3

    int-to-float v6, v2

    int-to-float v7, v4

    sub-float v8, p1, v9

    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v0, v5

    .line 529
    invoke-static {v0}, Landroid/app/IconCustomizer;->RGBToColor([I)I

    move-result v5

    goto :goto_0
.end method

.method private static setSaturation(IF)I
    .locals 10
    .parameter "color"
    .parameter "saturation"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 476
    invoke-static {p0}, Landroid/app/IconCustomizer;->colorToRGB(I)[I

    move-result-object v0

    .line 478
    .local v0, RGB:[I
    aget v4, v0, v7

    aget v5, v0, v8

    aget v6, v0, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 479
    .local v3, min:I
    aget v4, v0, v7

    aget v5, v0, v8

    aget v6, v0, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 480
    .local v2, max:I
    if-eqz v2, :cond_0

    if-ne v2, v3, :cond_1

    :cond_0
    move v4, p0

    .line 487
    :goto_0
    return v4

    .line 482
    :cond_1
    const/high16 v4, 0x3f80

    sub-int v5, v2, v3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    int-to-float v5, v2

    div-float v1, v4, v5

    .line 483
    .local v1, currentSaturation:F
    int-to-float v4, v2

    aget v5, v0, v7

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v7

    .line 484
    int-to-float v4, v2

    aget v5, v0, v8

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v8

    .line 485
    int-to-float v4, v2

    aget v5, v0, v9

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v9

    .line 487
    invoke-static {v0}, Landroid/app/IconCustomizer;->RGBToColor([I)I

    move-result v4

    goto :goto_0
.end method

.method private static setValue(IF)I
    .locals 9
    .parameter "color"
    .parameter "value"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 452
    invoke-static {p0}, Landroid/app/IconCustomizer;->colorToRGB(I)[I

    move-result-object v0

    .line 454
    .local v0, RGB:[I
    aget v3, v0, v6

    aget v4, v0, v7

    aget v5, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 455
    .local v2, max:I
    if-nez v2, :cond_0

    move v3, p0

    .line 462
    :goto_0
    return v3

    .line 457
    :cond_0
    const/high16 v3, 0x3f80

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x437f

    div-float v1, v3, v4

    .line 458
    .local v1, currentValue:F
    aget v3, v0, v6

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v1

    float-to-int v3, v3

    aput v3, v0, v6

    .line 459
    aget v3, v0, v7

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v1

    float-to-int v3, v3

    aput v3, v0, v7

    .line 460
    aget v3, v0, v8

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v1

    float-to-int v3, v3

    aput v3, v0, v8

    .line 462
    invoke-static {v0}, Landroid/app/IconCustomizer;->RGBToColor([I)I

    move-result v3

    goto :goto_0
.end method
