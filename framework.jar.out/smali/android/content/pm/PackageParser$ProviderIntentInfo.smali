.class public final Landroid/content/pm/PackageParser$ProviderIntentInfo;
.super Landroid/content/pm/PackageParser$IntentInfo;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderIntentInfo"
.end annotation


# instance fields
.field public final provider:Landroid/content/pm/PackageParser$Provider;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Provider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageParser$Provider;

    .prologue
    .line 4609
    invoke-direct {p0}, Landroid/content/pm/PackageParser$IntentInfo;-><init>()V

    .line 4610
    iput-object p1, p0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    .line 4611
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4614
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4615
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProviderIntentInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4616
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4617
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4618
    iget-object v1, p0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$Provider;->appendComponentShortName(Ljava/lang/StringBuilder;)V

    .line 4619
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4620
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
