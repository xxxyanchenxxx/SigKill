.class public Lcom/yc/pm/PackageManagerStub;
.super Lcom/yc/pm/MethodInvocationProxy;
.source "PackageManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yc/pm/PackageManagerStub$GetPackageInfo;
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
.field private static SERVICE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "package"

    sput-object v0, Lcom/yc/pm/PackageManagerStub;->SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/yc/pm/MethodInvocationStub;

    invoke-static {}, Lcom/yc/pm/PackageManagerStub;->getInterface()Landroid/os/IInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yc/pm/MethodInvocationStub;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/yc/pm/MethodInvocationProxy;-><init>(Lcom/yc/pm/MethodInvocationStub;)V

    .line 19
    invoke-direct {p0}, Lcom/yc/pm/PackageManagerStub;->init()V

    .line 21
    return-void
.end method

.method private static getBinder()Landroid/os/IBinder;
    .locals 5

    .prologue
    .line 36
    const-string/jumbo v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/yc/pm/Reflect;->on(Ljava/lang/String;)Lcom/yc/pm/Reflect;

    move-result-object v0

    const-string/jumbo v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/yc/pm/PackageManagerStub;->SERVICE:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/yc/pm/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yc/pm/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yc/pm/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 36
    return-object v0
.end method

.method private static getInterface()Landroid/os/IInterface;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 28
    const-string/jumbo v2, "android.os.ServiceManager"

    invoke-static {v2}, Lcom/yc/pm/Reflect;->on(Ljava/lang/String;)Lcom/yc/pm/Reflect;

    move-result-object v2

    const-string/jumbo v3, "getService"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Lcom/yc/pm/PackageManagerStub;->SERVICE:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/yc/pm/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yc/pm/Reflect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yc/pm/Reflect;->get()Ljava/lang/Object;

    move-result-object v1

    .line 31
    .local v1, "service":Ljava/lang/Object;
    const-string/jumbo v2, "android.content.pm.IPackageManager$Stub"

    invoke-static {v2}, Lcom/yc/pm/Reflect;->on(Ljava/lang/String;)Lcom/yc/pm/Reflect;

    move-result-object v2

    const-string/jumbo v3, "asInterface"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/yc/pm/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yc/pm/Reflect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yc/pm/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 32
    .local v0, "asInterface":Landroid/os/IInterface;
    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 41
    new-instance v4, Lcom/yc/pm/PackageManagerStub$GetPackageInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/yc/pm/PackageManagerStub$GetPackageInfo;-><init>(Lcom/yc/pm/PackageManagerStub$1;)V

    invoke-virtual {p0, v4}, Lcom/yc/pm/PackageManagerStub;->addMethodProxy(Lcom/yc/pm/MethodProxy;)Lcom/yc/pm/MethodProxy;

    .line 42
    invoke-static {}, Lcom/yc/pm/PackageManagerStub;->getBinder()Landroid/os/IBinder;

    .line 45
    :try_start_0
    new-instance v3, Lcom/yc/pm/BinderInvocationStub;

    invoke-virtual {p0}, Lcom/yc/pm/PackageManagerStub;->getInvocationStub()Lcom/yc/pm/MethodInvocationStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yc/pm/MethodInvocationStub;->getBaseInterface()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IInterface;

    invoke-direct {v3, v4}, Lcom/yc/pm/BinderInvocationStub;-><init>(Landroid/os/IInterface;)V

    .line 46
    .local v3, "pmHookBinder":Lcom/yc/pm/BinderInvocationStub;
    invoke-virtual {p0}, Lcom/yc/pm/PackageManagerStub;->getInvocationStub()Lcom/yc/pm/MethodInvocationStub;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yc/pm/BinderInvocationStub;->copyMethodProxies(Lcom/yc/pm/MethodInvocationStub;)V

    .line 47
    sget-object v4, Lcom/yc/pm/PackageManagerStub;->SERVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/yc/pm/BinderInvocationStub;->replaceService(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v3    # "pmHookBinder":Lcom/yc/pm/BinderInvocationStub;
    :goto_0
    const/4 v2, 0x0

    .line 54
    .local v2, "hookedPM":Landroid/os/IInterface;
    :try_start_1
    invoke-virtual {p0}, Lcom/yc/pm/PackageManagerStub;->getInvocationStub()Lcom/yc/pm/MethodInvocationStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yc/pm/MethodInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/IInterface;

    move-object v2, v0

    .line 55
    const-string/jumbo v4, "android.app.ActivityThread"

    invoke-static {v4}, Lcom/yc/pm/Reflect;->on(Ljava/lang/String;)Lcom/yc/pm/Reflect;

    move-result-object v4

    const-string/jumbo v5, "sPackageManager"

    invoke-virtual {v4, v5, v2}, Lcom/yc/pm/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/yc/pm/Reflect;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :goto_1
    return-void

    .line 48
    .end local v2    # "hookedPM":Landroid/os/IInterface;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "hookedPM":Landroid/os/IInterface;
    :catch_1
    move-exception v1

    .line 57
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static replaceService()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/yc/pm/PackageManagerStub;

    invoke-direct {v0}, Lcom/yc/pm/PackageManagerStub;-><init>()V

    .line 25
    .local v0, "serviceStub":Lcom/yc/pm/PackageManagerStub;
    return-void
.end method
