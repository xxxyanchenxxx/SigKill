.class public Lcom/yc/pm/SignatureKill;
.super Ljava/lang/Object;
.source "SignatureKill.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static kill()V
    .locals 20

    .prologue
    .line 20
    :try_start_0
    const-string/jumbo v17, "android.app.ActivityThread"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 21
    .local v2, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v17, "currentActivityThread"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 22
    .local v5, "currentActivityThreadMethod":Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 24
    .local v4, "currentActivityThread":Ljava/lang/Object;
    const-string/jumbo v17, "mInitialApplication"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 25
    .local v9, "mInitialApplicationField":Ljava/lang/reflect/Field;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Application;

    .line 29
    .local v8, "mInitialApplication":Landroid/app/Application;
    const-string/jumbo v17, "sPackageManager"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    .line 30
    .local v16, "sPackageManagerField":Ljava/lang/reflect/Field;
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 31
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 32
    .local v15, "sPackageManager":Ljava/lang/Object;
    new-instance v11, Lcom/yc/pm/PackageManagerHandler;

    invoke-direct {v11, v15}, Lcom/yc/pm/PackageManagerHandler;-><init>(Ljava/lang/Object;)V

    .line 35
    .local v11, "packageManagerHandler":Lcom/yc/pm/PackageManagerHandler;
    const-string/jumbo v17, "android.content.pm.IPackageManager"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 36
    .local v7, "iPackageManagerInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v11}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v13

    .line 40
    .local v13, "proxy":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v8}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 44
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string/jumbo v18, "mPM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 45
    .local v10, "mPmField":Ljava/lang/reflect/Field;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {v10, v12, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    const-string/jumbo v17, "android.os.ServiceManager"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 50
    .local v3, "cls":Ljava/lang/Class;
    const-string/jumbo v17, "sCache"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 51
    .local v14, "sCacheField":Ljava/lang/reflect/Field;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 52
    const-string/jumbo v17, "package"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v3    # "cls":Ljava/lang/Class;
    .end local v4    # "currentActivityThread":Ljava/lang/Object;
    .end local v5    # "currentActivityThreadMethod":Ljava/lang/reflect/Method;
    .end local v7    # "iPackageManagerInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "mInitialApplication":Landroid/app/Application;
    .end local v9    # "mInitialApplicationField":Ljava/lang/reflect/Field;
    .end local v10    # "mPmField":Ljava/lang/reflect/Field;
    .end local v11    # "packageManagerHandler":Lcom/yc/pm/PackageManagerHandler;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "proxy":Ljava/lang/Object;
    .end local v14    # "sCacheField":Ljava/lang/reflect/Field;
    .end local v15    # "sPackageManager":Ljava/lang/Object;
    .end local v16    # "sPackageManagerField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v6

    .line 54
    .local v6, "e":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
