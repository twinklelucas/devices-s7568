.class public Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Exp;
.super Ljava/lang/Object;
.source "Exp.java"

# interfaces
.implements Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;
    .locals 6
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 60
    .local v2, result:Ljava/lang/Double;
    const/4 v1, 0x0

    .line 63
    .local v1, number:Ljava/lang/Double;
    :try_start_0
    new-instance v1, Ljava/lang/Double;

    .end local v1           #number:Ljava/lang/Double;
    invoke-direct {v1, p2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .restart local v1       #number:Ljava/lang/Double;
    new-instance v2, Ljava/lang/Double;

    .end local v2           #result:Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    .line 70
    .restart local v2       #result:Ljava/lang/Double;
    new-instance v3, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 64
    .end local v1           #number:Ljava/lang/Double;
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    const-string v4, "Invalid argument."

    invoke-direct {v3, v4, v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "exp"

    return-object v0
.end method