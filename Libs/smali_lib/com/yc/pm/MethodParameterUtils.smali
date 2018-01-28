.class public Lcom/yc/pm/MethodParameterUtils;
.super Ljava/lang/Object;
.source "MethodParameterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllInterface(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    .local v0, "classes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    invoke-static {p0, v0}, Lcom/yc/pm/MethodParameterUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 14
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/Class;

    .line 15
    .local v1, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    return-object v1
.end method

.method public static getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "interfaceCollection":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 22
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    .line 26
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/yc/pm/MethodParameterUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 28
    :cond_1
    return-void
.end method
