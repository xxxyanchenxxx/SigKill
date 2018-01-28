.class public Lcom/yc/pm/SignatureKill;
.super Ljava/lang/Object;
.source "SignatureKill.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static kill()V
    .locals 1

    .prologue
    .line 20
    :try_start_0
    invoke-static {}, Lcom/yc/pm/WebViewUpdateServiceStub;->replaceService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/yc/pm/PackageManagerStub;->replaceService()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    :goto_1
    return-void

    .line 21
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 22
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 26
    :catch_1
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
