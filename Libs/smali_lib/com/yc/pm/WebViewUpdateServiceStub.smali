.class public Lcom/yc/pm/WebViewUpdateServiceStub;
.super Lcom/yc/pm/MethodInvocationProxy;
.source "WebViewUpdateServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yc/pm/WebViewUpdateServiceStub$WaitForAndGetProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yc/pm/MethodInvocationProxy",
        "<",
        "Lcom/yc/pm/MethodInvocationStub",
        "<",
        "Landroid/os/IInterface;",
        ">;>;"
    }
.end annotation


# static fields
.field private static WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "webviewupdate"

    sput-object v0, Lcom/yc/pm/WebViewUpdateServiceStub;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/yc/pm/MethodInvocationStub;

    invoke-static {}, Lcom/yc/pm/WebViewUpdateServiceStub;->getInterface()Landroid/os/IInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yc/pm/MethodInvocationStub;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/yc/pm/MethodInvocationProxy;-><init>(Lcom/yc/pm/MethodInvocationStub;)V

    .line 20
    invoke-direct {p0}, Lcom/yc/pm/WebViewUpdateServiceStub;->init()V

    .line 22
    return-void
.end method

.method private static getBinder()Landroid/os/IBinder;
    .locals 5

    .prologue
    .line 43
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/yc/pm/Reflect;->on(Ljava/lang/String;)Lcom/yc/pm/Reflect;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/yc/pm/WebViewUpdateServiceStub;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/yc/pm/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yc/pm/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yc/pm/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 43
    return-object v0
.end method

.method private static getInterface()Landroid/os/IInterface;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 35
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Lcom/yc/pm/Reflect;->on(Ljava/lang/String;)Lcom/yc/pm/Reflect;

    move-result-object v2

    const-string v3, "getService"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Lcom/yc/pm/WebViewUpdateServiceStub;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 36
    invoke-virtual {v2, v3, v4}, Lcom/yc/pm/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yc/pm/Reflect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yc/pm/Reflect;->get()Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "service":Ljava/lang/Object;
    const-string v2, "android.webkit.IWebViewUpdateService$Stub"

    invoke-static {v2}, Lcom/yc/pm/Reflect;->on(Ljava/lang/String;)Lcom/yc/pm/Reflect;

    move-result-object v2

    const-string v3, "asInterface"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/yc/pm/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yc/pm/Reflect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yc/pm/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 39
    .local v0, "asInterface":Landroid/os/IInterface;
    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 48
    new-instance v1, Lcom/yc/pm/WebViewUpdateServiceStub$WaitForAndGetProvider;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/yc/pm/WebViewUpdateServiceStub$WaitForAndGetProvider;-><init>(Lcom/yc/pm/WebViewUpdateServiceStub$1;)V

    invoke-virtual {p0, v1}, Lcom/yc/pm/WebViewUpdateServiceStub;->addMethodProxy(Lcom/yc/pm/MethodProxy;)Lcom/yc/pm/MethodProxy;

    .line 50
    invoke-static {}, Lcom/yc/pm/WebViewUpdateServiceStub;->getBinder()Landroid/os/IBinder;

    .line 51
    new-instance v0, Lcom/yc/pm/BinderInvocationStub;

    invoke-virtual {p0}, Lcom/yc/pm/WebViewUpdateServiceStub;->getInvocationStub()Lcom/yc/pm/MethodInvocationStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yc/pm/MethodInvocationStub;->getBaseInterface()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-direct {v0, v1}, Lcom/yc/pm/BinderInvocationStub;-><init>(Landroid/os/IInterface;)V

    .line 52
    .local v0, "pmHookBinder":Lcom/yc/pm/BinderInvocationStub;
    invoke-virtual {p0}, Lcom/yc/pm/WebViewUpdateServiceStub;->getInvocationStub()Lcom/yc/pm/MethodInvocationStub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yc/pm/BinderInvocationStub;->copyMethodProxies(Lcom/yc/pm/MethodInvocationStub;)V

    .line 53
    sget-object v1, Lcom/yc/pm/WebViewUpdateServiceStub;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yc/pm/BinderInvocationStub;->replaceService(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static replaceService()V
    .locals 2

    .prologue
    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 27
    :try_start_0
    new-instance v0, Lcom/yc/pm/WebViewUpdateServiceStub;

    invoke-direct {v0}, Lcom/yc/pm/WebViewUpdateServiceStub;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method
