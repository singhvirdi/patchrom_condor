.class public Lcom/android/internal/telephony/HTCQualcommRIL;
.super Lcom/android/internal/telephony/RIL;
.source "HTCQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static final RIL_UNSOL_CDMA_3G_INDICATOR:I = 0xbc1

.field private static final RIL_UNSOL_CDMA_ENHANCE_ROAMING_INDICATOR:I = 0xbc4

.field private static final RIL_UNSOL_CDMA_NETWORK_BASE_PLUSCODE_DIAL:I = 0xbcc

.field private static final RIL_UNSOL_ENTER_LPM:I = 0x5f3

.field private static final RIL_UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED:I = 0x520f

.field private static final RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0x520d

.field private static final RIL_UNSOL_RESPONSE_PHONE_MODE_CHANGE:I = 0x1772

.field private static final RIL_UNSOL_RESPONSE_VOICE_RADIO_TECH_CHANGED:I = 0x520c


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method protected getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput p2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "getDataCallResponse, no ifname"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "addresses":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "dnses":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "gateways":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    :cond_3
    return-object v1
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "response":I
    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "ret":Ljava/lang/Object;
    :goto_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    const-string v3, "ril.socket.reset"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/telephony/HTCQualcommRIL;->setRadioPower(ZLandroid/os/Message;)V

    :cond_1
    const-string v3, "ril.socket.reset"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mPreferredNetworkType:I

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/HTCQualcommRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    iget v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mCdmaSubscription:I

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/HTCQualcommRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    const v3, 0x7fffffff

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/HTCQualcommRIL;->setCellInfoListRate(ILandroid/os/Message;)V

    check-cast v2, [I

    .end local v2    # "ret":Ljava/lang/Object;
    check-cast v2, [I

    aget v3, v2, v6

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HTCQualcommRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    :sswitch_a
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40a -> :sswitch_9
        0x5f3 -> :sswitch_0
        0xbc1 -> :sswitch_2
        0xbc4 -> :sswitch_3
        0xbcc -> :sswitch_4
        0x1772 -> :sswitch_5
        0x520c -> :sswitch_6
        0x520d -> :sswitch_7
        0x520f -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x40a -> :sswitch_1
        0x5f3 -> :sswitch_a
        0xbc1 -> :sswitch_a
        0xbc4 -> :sswitch_a
        0xbcc -> :sswitch_a
        0x1772 -> :sswitch_a
        0x520c -> :sswitch_a
        0x520d -> :sswitch_a
        0x520f -> :sswitch_a
    .end sparse-switch
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const-string v1, "forceCdmaLteNetworkType"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HTCQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    .local v0, "forceCdmaLte":Z
    if-eqz v0, :cond_0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
