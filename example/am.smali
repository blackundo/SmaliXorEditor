.class public Landroidx/activity/am;
.super Landroid/app/DialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/a6i;,
        Landroidx/activity/a76;,
        Landroidx/activity/a7a;,
        Landroidx/activity/a80;,
        Landroidx/activity/a86;
    }
.end annotation


# static fields
.field private static $:[S


# instance fields
.field private dontShowAgainChecked:Z


# direct methods
.method private static $(III)Ljava/lang/String;
    .locals 4

    sub-int v2, p1, p0

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    sub-int v2, p1, p0

    if-ge v1, v2, :cond_0

    sget-object v2, Landroidx/activity/am;->$:[S

    add-int v3, p0, v1

    aget-short v2, v2, v3

    xor-int/2addr v2, p2

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method static constructor <clinit>()V
    .locals 3

    const v0, 0xaa

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/activity/am;->$:[S

    nop

    return-void

    :array_0
    .array-data 2
        0x174as
        0x1758s
        0x1757s
        0x174as
        0x1714s
        0x174as
        0x175cs
        0x174bs
        0x1750s
        0x175fs
        0x1714s
        0x1754s
        0x175cs
        0x175ds
        0x1750s
        0x174cs
        0x1754s
        -0x2fads
        -0x2fbfs
        -0x2fb2s
        -0x2fads
        -0x2ff3s
        -0x2fads
        -0x2fbbs
        -0x2faes
        -0x2fb7s
        -0x2fbas
        -0x2ff3s
        -0x2fb3s
        -0x2fbbs
        -0x2fbcs
        -0x2fb7s
        -0x2fabs
        -0x2fb3s
        -0x184as
        -0x185cs
        -0x1855s
        -0x184as
        -0x1818s
        -0x184as
        -0x1860s
        -0x1849s
        -0x1854s
        -0x185ds
        -0x1818s
        -0x1857s
        -0x1854s
        -0x185es
        -0x1853s
        -0x184fs
        0x49f2s
        0x49c6s
        0x49efs
        0x49cds
        0x49das
        0x49d9s
        0x49das
        0x49cds
        0x49das
        0x49d1s
        0x49dcs
        0x49das
        0x49ccs
        0x4bc1s
        0x4bdas
        0x4bdds
        0x4bc5s
        0x4beds
        0x4bd6s
        0x4bdbs
        0x4bd3s
        0x4bdes
        0x4bdds
        0x4bd5s
        0x2518s
        0x2517s
        0x251ds
        0x250bs
        0x2516s
        0x2510s
        0x251ds
        0x2557s
        0x2510s
        0x2517s
        0x250ds
        0x251cs
        0x2517s
        0x250ds
        0x2557s
        0x2518s
        0x251as
        0x250ds
        0x2510s
        0x2516s
        0x2517s
        0x2557s
        0x252fs
        0x2530s
        0x253cs
        0x252es
        0x1ddes
        0x1deas
        0x1dc3s
        0x1de1s
        0x1df6s
        0x1df5s
        0x1df6s
        0x1de1s
        0x1df6s
        0x1dfds
        0x1df0s
        0x1df6s
        0x1de0s
        0x1269s
        0x1272s
        0x1275s
        0x126ds
        0x1245s
        0x127es
        0x1273s
        0x127bs
        0x1276s
        0x1275s
        0x127ds
        0x1400s
        0x1416s
        0x1410s
        0x1417s
        0x140cs
        0x140es
        0x143cs
        0x1407s
        0x140as
        0x1402s
        0x140fs
        0x140cs
        0x1404s
        0x4edbs
        0x4ec9s
        0x4ec6s
        0x4edbs
        0x4e85s
        0x4edbs
        0x4ecds
        0x4edas
        0x4ec1s
        0x4eces
        0x4e85s
        0x4ec4s
        0x4ec1s
        0x4ecfs
        0x4ec0s
        0x4edcs
        0x6342s
        0x6f40s
        0x6f52s
        0x6f5ds
        0x6f40s
        0x6f1es
        0x6f40s
        0x6f56s
        0x6f41s
        0x6f5as
        0x6f55s
        0x6f1es
        0x6f5fs
        0x6f5as
        0x6f54s
        0x6f5bs
        0x6f47s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    move-object/from16 v1, p0

    invoke-direct {v1}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroidx/activity/am;->dontShowAgainChecked:Z

    return-void
.end method

.method static synthetic access$1000006(Landroidx/activity/am;Ljava/lang/String;)V
    .locals 4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroidx/activity/am;->openURL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000007(Landroidx/activity/am;)V
    .locals 4

    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/activity/am;->handleSwitchPreference()V

    return-void
.end method

.method static synthetic access$1000008(Landroidx/activity/am;Landroid/widget/Switch;Z)V
    .locals 4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroidx/activity/am;->styleSwitch(Landroid/widget/Switch;Z)V

    return-void
.end method

.method static synthetic access$1000012(Landroidx/activity/am;)Landroid/graphics/drawable/Drawable;
    .locals 5

    move-object/from16 v1, p0

    invoke-direct {v1}, Landroidx/activity/am;->createGradientBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$L1000000(Landroidx/activity/am;)Z
    .locals 5

    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroidx/activity/am;->dontShowAgainChecked:Z

    return v0
.end method

.method static synthetic access$S1000000(Landroidx/activity/am;Z)V
    .locals 4

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput-boolean v1, v0, Landroidx/activity/am;->dontShowAgainChecked:Z

    return-void
.end method

.method private convertDpToPx(I)I
    .locals 6

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-virtual {v2}, Landroidx/activity/am;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v3

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private createButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {v3}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getButtonTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getButtonTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const p0, 0x0

    const p1, 0x11

    const p2, 0x1739

    invoke-static/range {p0 .. p2}, Landroidx/activity/am;->$(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {v3}, Landroidx/activity/am;->createButtonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createButtonBackground()Landroid/graphics/drawable/Drawable;
    .locals 9

    move-object/from16 v5, p0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getButtonBgTopColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getButtonBgBottomColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getButtonCornerRadius()I

    move-result v1

    invoke-direct {v5, v1}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private createCustomTitle()Landroid/view/View;
    .locals 14

    move-object/from16 v10, p0

    const/4 v5, 0x0

    const/4 v9, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getTitlePadding()I

    move-result v0

    invoke-direct {v10, v0}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v8, [I

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getTitleBgLeftColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getTitleBgRightColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getCornerRadius()I

    move-result v2

    invoke-direct {v10, v2}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getStrokeSize()I

    move-result v2

    invoke-direct {v10, v2}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v2

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getStrokeColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getIconSize()I

    move-result v3

    invoke-direct {v10, v3}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v3

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getIconSize()I

    move-result v4

    invoke-direct {v10, v4}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getIconMargin()I

    move-result v3

    invoke-direct {v10, v3}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v3

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    invoke-static {}, Landroidx/activity/ComponentActivity/B;->getBase64Image()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroidx/activity/am;->decodeBase64Image(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getIconBorder()I

    move-result v4

    invoke-direct {v10, v4}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v4

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getIconStrokeColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v10, v0, v4, v5}, Landroidx/activity/am;->getCircularBitmapWithBorder(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {v10}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getSeparatorSize()I

    move-result v4

    invoke-direct {v10, v4}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getSeparatorColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/S;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getTitleTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getTitleTextColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v12, 0x11

    const v13, 0x22

    const p0, -0x2fe0

    invoke-static/range {v12 .. v14}, Landroidx/activity/am;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getTitleBoxBgColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getCornerRadius()I

    move-result v4

    invoke-direct {v10, v4}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getStrokeSize()I

    move-result v4

    invoke-direct {v10, v4}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v4

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getStrokeColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-direct {v10, v7}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v4

    invoke-direct {v10, v7}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v5

    invoke-direct {v10, v7}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v6

    invoke-direct {v10, v7}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/S;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getSubtitleTextSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getSubtitleTextColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v12, 0x22

    const v13, 0x32

    const p0, -0x183b

    invoke-static/range {v12 .. v14}, Landroidx/activity/am;->$(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private createGradientBackground()Landroid/graphics/drawable/Drawable;
    .locals 9

    move-object/from16 v5, p0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getDialogBgTopColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getDialogBgBottomColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getCornerRadius()I

    move-result v1

    invoke-direct {v5, v1}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private createRoundedCornerDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getCornerRadius()I

    move-result v1

    invoke-direct {v2, v1}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private decodeBase64Image(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    const/4 v2, 0x0

    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCircularBitmapWithBorder(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float v0, v0

    div-float v7, v0, v8

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v3, v10, v0, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v11

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v0, v11

    div-float/2addr v0, v8

    sub-float v0, v7, v0

    invoke-virtual {v3, v7, v7, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method private handleSwitchPreference()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/from16 v3, p0

    const/4 v2, 0x0

    iget-boolean v0, v3, Landroidx/activity/am;->dontShowAgainChecked:Z

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v5, 0x32

    const v6, 0x3f

    const p0, 0x49bf

    invoke-static/range {v5 .. v7}, Landroidx/activity/am;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v5, 0x3f

    const v6, 0x4a

    const p0, 0x4bb2

    invoke-static/range {v5 .. v7}, Landroidx/activity/am;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private messageGradientBackground()Landroid/graphics/drawable/Drawable;
    .locals 9

    move-object/from16 v5, p0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getMessageBgTopColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getMessageBgBottomColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getCornerRadius()I

    move-result v1

    invoke-direct {v5, v1}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getStrokeSize()I

    move-result v1

    invoke-direct {v5, v1}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v1

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getStrokeColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private openURL(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    new-instance v0, Landroid/content/Intent;

    const v5, 0x4a

    const p0, 0x64

    const p1, 0x2579

    invoke-static/range {v5 .. v7}, Landroidx/activity/am;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroidx/activity/am;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static sD(Landroid/app/Activity;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    move-object/from16 v3, p0

    const v5, 0x64

    const v6, 0x71

    const p0, 0x1d93

    invoke-static/range {v5 .. v7}, Landroidx/activity/am;->$(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const v5, 0x71

    const v6, 0x7c

    const p0, 0x121a

    invoke-static/range {v5 .. v7}, Landroidx/activity/am;->$(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/activity/am;

    invoke-direct {v0}, Landroidx/activity/am;-><init>()V

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v5, 0x7c

    const v6, 0x89

    const p0, 0x1463

    invoke-static/range {v5 .. v7}, Landroidx/activity/am;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/activity/am;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private styleSwitch(Landroid/widget/Switch;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Switch;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getSwitchCornerRadius()I

    move-result v1

    invoke-direct {v4, v1}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getSwitchCheckedThumbColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getSwitchCheckedTrackColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-virtual {v5}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getSwitchThumbColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getSwitchTrackColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 17
    .annotation runtime Landroid/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    const/4 v12, 0x1

    const/4 v8, -0x1

    const/16 v11, 0x8

    const/4 v10, -0x2

    const/4 v9, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v13}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {v13}, Landroidx/activity/am;->createGradientBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getPadding()I

    move-result v2

    invoke-direct {v13, v2}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {v13, v3}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v3

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-direct {v13}, Landroidx/activity/am;->createCustomTitle()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v2, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {v13}, Landroidx/activity/am;->messageGradientBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getMessagePadding()I

    move-result v4

    invoke-direct {v13, v4}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v4

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getMessagePadding()I

    move-result v5

    invoke-direct {v13, v5}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v5

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getMessagePadding()I

    move-result v6

    invoke-direct {v13, v6}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v6

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getMessagePadding()I

    move-result v7

    invoke-direct {v13, v7}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v13, v11}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v5

    invoke-virtual {v4, v2, v5, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/S;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x2

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getMessageTextSize()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getMessageTextColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const v16, 0x89

    const p0, 0x99

    const p1, 0x4ea8

    invoke-static/range {v16 .. v18}, Landroidx/activity/am;->$(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getSwitchPadding()I

    move-result v4

    invoke-direct {v13, v4}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v4

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getSwitchPadding()I

    move-result v5

    invoke-direct {v13, v5}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v5

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getSwitchPadding()I

    move-result v6

    invoke-direct {v13, v6}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v6

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getSwitchPadding()I

    move-result v7

    invoke-direct {v13, v7}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    invoke-direct {v13, v5}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v5

    invoke-virtual {v4, v2, v5, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getSwitchBgColor()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v4}, Landroidx/activity/am;->createRoundedCornerDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {v13}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v16, 0x99

    const p0, 0x9a

    const p1, 0x6362

    invoke-static/range {v16 .. v18}, Landroidx/activity/am;->$(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {v13, v4, v9}, Landroidx/activity/am;->styleSwitch(Landroid/widget/Switch;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/S;->getSwitch()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/C;->getSwitchTextColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x2

    invoke-static {}, Landroidx/activity/ComponentActivity/d;->getSwitchTextSize()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const v16, 0x9a

    const p0, 0xaa

    const p1, 0x6f33

    invoke-static/range {v16 .. v18}, Landroidx/activity/am;->$(III)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v13, v11}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v7

    invoke-virtual {v6, v7, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroidx/activity/am;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {v13, v11}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v5

    invoke-direct {v13, v9}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v6

    invoke-virtual {v3, v9, v5, v9, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x10

    invoke-virtual {v5, v2, v6, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/S;->getNegativeButton()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroidx/activity/a6i;

    invoke-direct {v5, v13}, Landroidx/activity/a6i;-><init>(Landroidx/activity/am;)V

    invoke-direct {v13, v2, v5}, Landroidx/activity/am;->createButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v6, v12

    invoke-direct {v5, v9, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v6, 0xc

    invoke-direct {v13, v11}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v7

    invoke-direct {v13, v11}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v8

    invoke-virtual {v5, v6, v11, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Landroidx/activity/ComponentActivity/S;->getPositiveButton()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroidx/activity/a76;

    invoke-direct {v5, v13}, Landroidx/activity/a76;-><init>(Landroidx/activity/am;)V

    invoke-direct {v13, v2, v5}, Landroidx/activity/am;->createButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v6, v12

    invoke-direct {v5, v9, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {v13, v11}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v6

    const/16 v7, 0xc

    invoke-direct {v13, v11}, Landroidx/activity/am;->convertDpToPx(I)I

    move-result v8

    invoke-virtual {v5, v6, v11, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Landroidx/activity/a7a;

    invoke-direct {v1, v13}, Landroidx/activity/a7a;-><init>(Landroidx/activity/am;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v1, Landroidx/activity/a80;

    invoke-direct {v1, v13, v0}, Landroidx/activity/a80;-><init>(Landroidx/activity/am;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v1, Landroidx/activity/a86;

    invoke-direct {v1, v13, v4}, Landroidx/activity/a86;-><init>(Landroidx/activity/am;Landroid/widget/Switch;)V

    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-super {v3, v4, v5, v6}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/activity/am;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method
