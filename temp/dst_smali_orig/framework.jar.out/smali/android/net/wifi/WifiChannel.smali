.class public Landroid/net/wifi/WifiChannel;
.super Ljava/lang/Object;
.source "WifiChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public channel:I

.field public frequency:I

.field public ibssAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/WifiChannel$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiChannel$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/net/wifi/WifiChannel;->channel:I

    iput v0, p0, Landroid/net/wifi/WifiChannel;->frequency:I

    iput-boolean v0, p0, Landroid/net/wifi/WifiChannel;->ibssAllowed:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "ch"    # I
    .param p2, "freq"    # I
    .param p3, "ibss"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/WifiChannel;->channel:I

    iput p2, p0, Landroid/net/wifi/WifiChannel;->frequency:I

    iput-boolean p3, p0, Landroid/net/wifi/WifiChannel;->ibssAllowed:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiChannel;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/WifiChannel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiChannel;->channel:I

    iput v0, p0, Landroid/net/wifi/WifiChannel;->channel:I

    iget v0, p1, Landroid/net/wifi/WifiChannel;->frequency:I

    iput v0, p0, Landroid/net/wifi/WifiChannel;->frequency:I

    iget-boolean v0, p1, Landroid/net/wifi/WifiChannel;->ibssAllowed:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiChannel;->ibssAllowed:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/net/wifi/WifiChannel;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/net/wifi/WifiChannel;

    .local v0, "w":Landroid/net/wifi/WifiChannel;
    iget v2, p0, Landroid/net/wifi/WifiChannel;->channel:I

    iget v3, v0, Landroid/net/wifi/WifiChannel;->channel:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/wifi/WifiChannel;->frequency:I

    iget v3, v0, Landroid/net/wifi/WifiChannel;->frequency:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/net/wifi/WifiChannel;->ibssAllowed:Z

    iget-boolean v3, v0, Landroid/net/wifi/WifiChannel;->ibssAllowed:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .end local v0    # "w":Landroid/net/wifi/WifiChannel;
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, " channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiChannel;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " freq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiChannel;->frequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " MHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " IBSS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v1, p0, Landroid/net/wifi/WifiChannel;->ibssAllowed:Z

    if-eqz v1, :cond_0

    const-string v1, "allowed"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "not allowed"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiChannel;->channel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiChannel;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiChannel;->ibssAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
