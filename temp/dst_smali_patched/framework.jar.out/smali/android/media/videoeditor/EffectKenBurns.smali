.class public Landroid/media/videoeditor/EffectKenBurns;
.super Landroid/media/videoeditor/Effect;
.source "EffectKenBurns.java"


# instance fields
.field private mEndRect:Landroid/graphics/Rect;

.field private mStartRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-wide v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/media/videoeditor/EffectKenBurns;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;JJ)V
    .locals 7
    .param p1, "mediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "effectId"    # Ljava/lang/String;
    .param p3, "startRect"    # Landroid/graphics/Rect;
    .param p4, "endRect"    # Landroid/graphics/Rect;
    .param p5, "startTimeMs"    # J
    .param p7, "durationMs"    # J

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p5

    move-wide v5, p7

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/Effect;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Start rectangle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid End rectangle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p3, p0, Landroid/media/videoeditor/EffectKenBurns;->mStartRect:Landroid/graphics/Rect;

    iput-object p4, p0, Landroid/media/videoeditor/EffectKenBurns;->mEndRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getEndRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/EffectKenBurns;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method getKenBurnsSettings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "start"    # Landroid/graphics/Rect;
    .param p2, "end"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getStartRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/videoeditor/EffectKenBurns;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method
