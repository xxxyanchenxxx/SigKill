.class public Lcom/yc/pm/BinderInvocationStub;
.super Lcom/yc/pm/MethodInvocationStub;
.source "BinderInvocationStub.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yc/pm/BinderInvocationStub$AsBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yc/pm/MethodInvocationStub",
        "<",
        "Landroid/os/IInterface;",
        ">;",
        "Landroid/os/IBinder;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBaseBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/yc/pm/BinderInvocationStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yc/pm/BinderInvocationStub;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 2
    .param p1, "mBaseInterface"    # Landroid/os/IInterface;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1}, Lcom/yc/pm/MethodInvocationStub;-><init>(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0}, Lcom/yc/pm/BinderInvocationStub;->getBaseInterface()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yc/pm/BinderInvocationStub;->getBaseInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yc/pm/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    .line 27
    new-instance v0, Lcom/yc/pm/BinderInvocationStub$AsBinder;

    invoke-direct {v0, p0, v1}, Lcom/yc/pm/BinderInvocationStub$AsBinder;-><init>(Lcom/yc/pm/BinderInvocationStub;Lcom/yc/pm/BinderInvocationStub$1;)V

    invoke-virtual {p0, v0}, Lcom/yc/pm/BinderInvocationStub;->addMethodProxy(Lcom/yc/pm/MethodProxy;)Lcom/yc/pm/MethodProxy;

    .line 28
    return-void

    :cond_0
    move-object v0, v1

    .line 26
    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yc/pm/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yc/pm/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yc/pm/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yc/pm/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yc/pm/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 90
    return-void
.end method

.method public pingBinder()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yc/pm/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/yc/pm/BinderInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method public replaceService(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/yc/pm/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 32
    const-string/jumbo v1, "android.os.ServiceManager"

    invoke-static {v1}, Lcom/yc/pm/Reflect;->on(Ljava/lang/String;)Lcom/yc/pm/Reflect;

    move-result-object v1

    const-string/jumbo v2, "sCache"

    invoke-virtual {v1, v2}, Lcom/yc/pm/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, "sCache":Ljava/lang/Object;
    invoke-static {v0}, Lcom/yc/pm/Reflect;->on(Ljava/lang/Object;)Lcom/yc/pm/Reflect;

    move-result-object v1

    const-string/jumbo v2, "put"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/yc/pm/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/yc/pm/Reflect;

    .line 35
    .end local v0    # "sCache":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yc/pm/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yc/pm/BinderInvocationStub;->mBaseBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method
