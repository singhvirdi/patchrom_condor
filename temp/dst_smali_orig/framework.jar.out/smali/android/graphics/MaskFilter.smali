.class public Landroid/graphics/MaskFilter;
.super Ljava/lang/Object;
.source "MaskFilter.java"


# instance fields
.field native_instance:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDestructor(I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/graphics/MaskFilter;->native_instance:I

    invoke-static {v0}, Landroid/graphics/MaskFilter;->nativeDestructor(I)V

    return-void
.end method
