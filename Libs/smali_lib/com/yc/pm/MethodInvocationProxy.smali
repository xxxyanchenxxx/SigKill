.class public abstract Lcom/yc/pm/MethodInvocationProxy;
.super Ljava/lang/Object;
.source "MethodInvocationProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yc/pm/MethodInvocationStub;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mInvocationStub:Lcom/yc/pm/MethodInvocationStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yc/pm/MethodInvocationStub;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/yc/pm/MethodInvocationProxy;, "Lcom/yc/pm/MethodInvocationProxy<TT;>;"
    .local p1, "invocationStub":Lcom/yc/pm/MethodInvocationStub;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/yc/pm/MethodInvocationProxy;->mInvocationStub:Lcom/yc/pm/MethodInvocationStub;

    .line 18
    invoke-virtual {p0}, Lcom/yc/pm/MethodInvocationProxy;->onBindMethods()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/yc/pm/MethodInvocationProxy;->afterHookApply(Lcom/yc/pm/MethodInvocationStub;)V

    .line 21
    return-void
.end method


# virtual methods
.method public addMethodProxy(Lcom/yc/pm/MethodProxy;)Lcom/yc/pm/MethodProxy;
    .locals 1
    .param p1, "methodProxy"    # Lcom/yc/pm/MethodProxy;

    .prologue
    .line 28
    .local p0, "this":Lcom/yc/pm/MethodInvocationProxy;, "Lcom/yc/pm/MethodInvocationProxy<TT;>;"
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationProxy;->mInvocationStub:Lcom/yc/pm/MethodInvocationStub;

    invoke-virtual {v0, p1}, Lcom/yc/pm/MethodInvocationStub;->addMethodProxy(Lcom/yc/pm/MethodProxy;)Lcom/yc/pm/MethodProxy;

    move-result-object v0

    return-object v0
.end method

.method protected afterHookApply(Lcom/yc/pm/MethodInvocationStub;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/yc/pm/MethodInvocationProxy;, "Lcom/yc/pm/MethodInvocationProxy<TT;>;"
    .local p1, "delegate":Lcom/yc/pm/MethodInvocationStub;, "TT;"
    return-void
.end method

.method public getInvocationStub()Lcom/yc/pm/MethodInvocationStub;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/yc/pm/MethodInvocationProxy;, "Lcom/yc/pm/MethodInvocationProxy<TT;>;"
    iget-object v0, p0, Lcom/yc/pm/MethodInvocationProxy;->mInvocationStub:Lcom/yc/pm/MethodInvocationStub;

    return-object v0
.end method

.method protected onBindMethods()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/yc/pm/MethodInvocationProxy;, "Lcom/yc/pm/MethodInvocationProxy<TT;>;"
    return-void
.end method
