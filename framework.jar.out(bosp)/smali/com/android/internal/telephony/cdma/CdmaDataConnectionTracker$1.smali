.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;
.super Ljava/lang/Object;
.source "CdmaDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 436
    const-wide/16 v3, -0x1

    .local v3, preTxPkts:J
    const-wide/16 v1, -0x1

    .line 440
    .local v1, preRxPkts:J
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v3

    .line 441
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v1

    .line 443
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 444
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v10

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 448
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-gtz v9, :cond_0

    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-lez v9, :cond_1

    .line 449
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v9

    sub-long v7, v9, v3

    .line 450
    .local v7, sent:J
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v9

    sub-long v5, v9, v1

    .line 452
    .local v5, received:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_4

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_4

    .line 453
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 454
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 472
    .local v0, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    if-eq v9, v0, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 473
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1902(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 474
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 478
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v5           #received:J
    .end local v7           #sent:J
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v9

    const-wide/16 v11, 0xa

    cmp-long v9, v9, v11

    if-ltz v9, :cond_c

    .line 481
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v9

    if-nez v9, :cond_2

    .line 482
    const v9, 0xc3b5

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 487
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v9

    const/16 v10, 0x18

    if-ge v9, v10, :cond_b

    .line 488
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2508(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    .line 490
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/16 v10, 0x1388

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    .line 505
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 506
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 508
    :cond_3
    return-void

    .line 455
    .restart local v5       #received:J
    .restart local v7       #sent:J
    :cond_4
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_6

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_6

    .line 456
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v10, :cond_5

    .line 457
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v9, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$914(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 461
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_0

    .line 459
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    goto :goto_2

    .line 462
    :cond_6
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_7

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_7

    .line 463
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 464
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_0

    .line 465
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_7
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_9

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_9

    .line 466
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v0

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_3
    goto/16 :goto_0

    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto :goto_3

    .line 468
    :cond_9
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 469
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v9, v10, :cond_a

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v0

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_4
    goto/16 :goto_0

    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto :goto_4

    .line 492
    .end local v5           #received:J
    .end local v7           #sent:J
    :cond_b
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pkts since last received"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 495
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2802(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 496
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 497
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->restartRadio()V

    .line 498
    const v9, 0xc3b6

    const/16 v10, 0x18

    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(II)I

    goto/16 :goto_1

    .line 501
    :cond_c
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2902(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    .line 502
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/16 v10, 0x3e8

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    goto/16 :goto_1
.end method
