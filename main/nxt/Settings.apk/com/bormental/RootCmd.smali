.class public Lcom/bormental/RootCmd;
.super Ljava/lang/Object;
.source "RootCmd.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StockSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RunRootCmd(Ljava/lang/String;)I
    .locals 6
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 12
    :try_start_0
    const-string v4, "StockSettings"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 15
    .local v2, "localProcess":Ljava/lang/Process;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    .local v0, "localDataOutputStream":Ljava/io/DataOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 19
    const-string v4, "exit\n"

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 21
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 22
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 27
    .end local v0    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .end local v2    # "localProcess":Ljava/lang/Process;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return v4

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    const/4 v4, 0x1

    goto :goto_0
.end method
