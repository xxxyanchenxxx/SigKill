.class Lcom/yc/pm/WebViewUpdateServiceStub$WaitForAndGetProvider;
.super Lcom/yc/pm/MethodProxy;
.source "WebViewUpdateServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yc/pm/WebViewUpdateServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitForAndGetProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yc/pm/MethodProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yc/pm/WebViewUpdateServiceStub$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yc/pm/WebViewUpdateServiceStub$1;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yc/pm/WebViewUpdateServiceStub$WaitForAndGetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "who"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "result":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 66
    invoke-static {v1}, Lcom/yc/pm/Reflect;->on(Ljava/lang/Object;)Lcom/yc/pm/Reflect;

    move-result-object v2

    const-string v3, "packageInfo"

    invoke-virtual {v2, v3}, Lcom/yc/pm/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 67
    .local v0, "inf":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Lcom/yc/pm/Reflect;->on(Ljava/lang/Object;)Lcom/yc/pm/Reflect;

    move-result-object v2

    const-string v3, "signatures"

    invoke-static {}, Lcom/yc/pm/SignatureFake;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/yc/pm/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/yc/pm/Reflect;

    .line 71
    .end local v0    # "inf":Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "waitForAndGetProvider"

    return-object v0
.end method
