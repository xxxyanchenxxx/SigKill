.class public Lcom/yc/pm/MethodInvocationStub;
.super Ljava/lang/Object;
.source "MethodInvocationStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBaseInterface:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mIdentityName:Ljava/lang/String;

.field private mInternalMethodProxies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yc/pm/MethodProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyInterface:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/yc/pm/MethodInvocationStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yc/pm/MethodInvocationStub;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub;, "Lcom/yc/pm/MethodInvocationStub<TT;>;"
    .local p1, "baseInterface":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lcom/yc/pm/MethodInvocationStub;-><init>(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 42
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub;, "Lcom/yc/pm/MethodInvocationStub<TT;>;"
    .local p1, "baseInterface":Ljava/lang/Object;, "TT;"
    .local p2, "proxyInterfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/yc/pm/MethodInvocationStub;->mBaseInterface:Ljava/lang/Object;

    .line 31
    if-eqz p1, :cond_1

    .line 32
    if-nez p2, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/yc/pm/MethodParameterUtils;->getAllInterface(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p2

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;-><init>(Lcom/yc/pm/MethodInvocationStub;Lcom/yc/pm/MethodInvocationStub$1;)V

    invoke-static {v0, p2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mProxyInterface:Ljava/lang/Object;

    .line 38
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/yc/pm/MethodInvocationStub;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/yc/pm/MethodInvocationStub;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mBaseInterface:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addMethodProxy(Lcom/yc/pm/MethodProxy;)Lcom/yc/pm/MethodProxy;
    .locals 2
    .param p1, "methodProxy"    # Lcom/yc/pm/MethodProxy;

    .prologue
    .line 59
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub;, "Lcom/yc/pm/MethodInvocationStub<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yc/pm/MethodProxy;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yc/pm/MethodProxy;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-object p1

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yc/pm/MethodProxy;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public copyMethodProxies(Lcom/yc/pm/MethodInvocationStub;)V
    .locals 2
    .param p1, "from"    # Lcom/yc/pm/MethodInvocationStub;

    .prologue
    .line 50
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub;, "Lcom/yc/pm/MethodInvocationStub<TT;>;"
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yc/pm/MethodInvocationStub;->getAllHooks()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method public getAllHooks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yc/pm/MethodProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub;, "Lcom/yc/pm/MethodInvocationStub<TT;>;"
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    return-object v0
.end method

.method public getBaseInterface()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub;, "Lcom/yc/pm/MethodInvocationStub<TT;>;"
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mBaseInterface:Ljava/lang/Object;

    return-object v0
.end method

.method public getMethodProxiesCount()I
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub;, "Lcom/yc/pm/MethodInvocationStub<TT;>;"
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getMethodProxy(Ljava/lang/String;)Lcom/yc/pm/MethodProxy;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Lcom/yc/pm/MethodProxy;",
            ">(",
            "Ljava/lang/String;",
            ")TH;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub;, "Lcom/yc/pm/MethodInvocationStub<TT;>;"
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yc/pm/MethodProxy;

    return-object v0
.end method

.method public getProxyInterface()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub;, "Lcom/yc/pm/MethodInvocationStub<TT;>;"
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mProxyInterface:Ljava/lang/Object;

    return-object v0
.end method

.method public removeAllMethodProxies()V
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub;, "Lcom/yc/pm/MethodInvocationStub<TT;>;"
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 94
    return-void
.end method

.method public removeMethodProxy(Ljava/lang/String;)Lcom/yc/pm/MethodProxy;
    .locals 1
    .param p1, "hookName"    # Ljava/lang/String;

    .prologue
    .line 75
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub;, "Lcom/yc/pm/MethodInvocationStub<TT;>;"
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yc/pm/MethodProxy;

    return-object v0
.end method

.method public removeMethodProxy(Lcom/yc/pm/MethodProxy;)V
    .locals 1
    .param p1, "methodProxy"    # Lcom/yc/pm/MethodProxy;

    .prologue
    .line 84
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub;, "Lcom/yc/pm/MethodInvocationStub<TT;>;"
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/yc/pm/MethodProxy;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yc/pm/MethodInvocationStub;->removeMethodProxy(Ljava/lang/String;)Lcom/yc/pm/MethodProxy;

    .line 87
    :cond_0
    return-void
.end method
