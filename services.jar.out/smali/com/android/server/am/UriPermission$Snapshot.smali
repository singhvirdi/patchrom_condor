.class public Lcom/android/server/am/UriPermission$Snapshot;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field final persistedCreateTime:J

.field final persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final uri:Landroid/net/Uri;

.field final userHandle:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/UriPermission;)V
    .locals 2
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iget v0, p1, Lcom/android/server/am/UriPermission;->userHandle:I

    iput v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->userHandle:I

    .line 342
    iget-object v0, p1, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    .line 343
    iget-object v0, p1, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    .line 344
    iget-object v0, p1, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->uri:Landroid/net/Uri;

    .line 345
    iget v0, p1, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iput v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->persistedModeFlags:I

    .line 346
    iget-wide v0, p1, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    iput-wide v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->persistedCreateTime:J

    .line 347
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/UriPermission;
    .param p2, "x1"    # Lcom/android/server/am/UriPermission$1;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/android/server/am/UriPermission$Snapshot;-><init>(Lcom/android/server/am/UriPermission;)V

    return-void
.end method
