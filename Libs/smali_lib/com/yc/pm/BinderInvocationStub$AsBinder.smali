.class final Lcom/yc/pm/BinderInvocationStub$AsBinder;
.super Lcom/yc/pm/MethodProxy;
.source "BinderInvocationStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yc/pm/BinderInvocationStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yc/pm/BinderInvocationStub;


# direct methods
.method private constructor <init>(Lcom/yc/pm/BinderInvocationStub;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yc/pm/BinderInvocationStub$AsBinder;->this$0:Lcom/yc/pm/BinderInvocationStub;

    invoke-direct {p0}, Lcom/yc/pm/MethodProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yc/pm/BinderInvocationStub;Lcom/yc/pm/BinderInvocationStub$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yc/pm/BinderInvocationStub;
    .param p2, "x1"    # Lcom/yc/pm/BinderInvocationStub$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/yc/pm/BinderInvocationStub$AsBinder;-><init>(Lcom/yc/pm/BinderInvocationStub;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "who"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yc/pm/BinderInvocationStub$AsBinder;->this$0:Lcom/yc/pm/BinderInvocationStub;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "asBinder"

    return-object v0
.end method
