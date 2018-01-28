.class Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;
.super Ljava/lang/Object;
.source "MethodInvocationStub.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yc/pm/MethodInvocationStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HookInvocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yc/pm/MethodInvocationStub;


# direct methods
.method private constructor <init>(Lcom/yc/pm/MethodInvocationStub;)V
    .locals 0

    .prologue
    .line 129
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;, "Lcom/yc/pm/MethodInvocationStub<TT;>.HookInvocationHandler;"
    iput-object p1, p0, Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/yc/pm/MethodInvocationStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yc/pm/MethodInvocationStub;Lcom/yc/pm/MethodInvocationStub$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yc/pm/MethodInvocationStub;
    .param p2, "x1"    # Lcom/yc/pm/MethodInvocationStub$1;

    .prologue
    .line 129
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;, "Lcom/yc/pm/MethodInvocationStub<TT;>.HookInvocationHandler;"
    invoke-direct {p0, p1}, Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;-><init>(Lcom/yc/pm/MethodInvocationStub;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;, "Lcom/yc/pm/MethodInvocationStub<TT;>.HookInvocationHandler;"
    iget-object v6, p0, Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/yc/pm/MethodInvocationStub;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/yc/pm/MethodInvocationStub;->getMethodProxy(Ljava/lang/String;)Lcom/yc/pm/MethodProxy;

    move-result-object v2

    .line 133
    .local v2, "methodProxy":Lcom/yc/pm/MethodProxy;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/yc/pm/MethodProxy;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    .line 135
    .local v5, "useProxy":Z
    :goto_0
    const/4 v3, 0x0

    .line 136
    .local v3, "res":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 139
    .local v1, "exception":Ljava/lang/Throwable;
    if-eqz v5, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/yc/pm/MethodInvocationStub;

    invoke-static {v6}, Lcom/yc/pm/MethodInvocationStub;->access$100(Lcom/yc/pm/MethodInvocationStub;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6, p2, p3}, Lcom/yc/pm/MethodProxy;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    iget-object v6, p0, Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/yc/pm/MethodInvocationStub;

    invoke-static {v6}, Lcom/yc/pm/MethodInvocationStub;->access$100(Lcom/yc/pm/MethodInvocationStub;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6, p2, p3}, Lcom/yc/pm/MethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 141
    iget-object v6, p0, Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/yc/pm/MethodInvocationStub;

    invoke-static {v6}, Lcom/yc/pm/MethodInvocationStub;->access$100(Lcom/yc/pm/MethodInvocationStub;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6, p2, p3, v3}, Lcom/yc/pm/MethodProxy;->afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 145
    :goto_1
    return-object v3

    .line 133
    .end local v1    # "exception":Ljava/lang/Throwable;
    .end local v3    # "res":Ljava/lang/Object;
    .end local v5    # "useProxy":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 143
    .restart local v1    # "exception":Ljava/lang/Throwable;
    .restart local v3    # "res":Ljava/lang/Object;
    .restart local v5    # "useProxy":Z
    :cond_1
    iget-object v6, p0, Lcom/yc/pm/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/yc/pm/MethodInvocationStub;

    invoke-static {v6}, Lcom/yc/pm/MethodInvocationStub;->access$100(Lcom/yc/pm/MethodInvocationStub;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 147
    .end local v3    # "res":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 148
    .local v4, "t":Ljava/lang/Throwable;
    move-object v1, v4

    .line 149
    :try_start_1
    instance-of v6, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 150
    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 152
    :cond_2
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    throw v6
.end method
