.class final enum Landroid/hardware/ssp/SSPPropertyBundle$PropertyType$6;
.super Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
.source "SSPPropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/ssp/SSPPropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/SSPPropertyBundle$1;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Landroid/hardware/ssp/SSPPropertyBundle;->access$600()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, value:Ljava/lang/Object;,"TT;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Ljava/lang/String;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-static {p1}, Landroid/hardware/ssp/SSPPropertyBundle;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    :goto_0
    return-void

    .line 173
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_0
    const-string v0, "Cannot cast data type."

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
