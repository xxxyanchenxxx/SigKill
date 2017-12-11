.class public Lcom/yc/pm/PackageManagerHandler;
.super Ljava/lang/Object;
.source "PackageManagerHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/yc/pm/PackageManagerHandler;->object:Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "getPackageInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x1

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 23
    .local v0, "flag":I
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/yc/pm/PackageManagerHandler;->object:Ljava/lang/Object;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 25
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/yc/pm/SignatureFake;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 29
    .end local v0    # "flag":I
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/yc/pm/PackageManagerHandler;->object:Ljava/lang/Object;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
