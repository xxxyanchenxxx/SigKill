.class Lcom/yc/pm/PackageManagerStub$GetPackageInfo;
.super Lcom/yc/pm/MethodProxy;
.source "PackageManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yc/pm/PackageManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetPackageInfo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yc/pm/MethodProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yc/pm/PackageManagerStub$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yc/pm/PackageManagerStub$1;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yc/pm/PackageManagerStub$GetPackageInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "who"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 70
    .local v0, "result":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/yc/pm/SignatureFake;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 73
    :cond_0
    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "getPackageInfo"

    return-object v0
.end method
