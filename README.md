# SigKill
一键绕过App签名验证。实现原理是Hook了PackaegManager，返回我们指定的签名。

## Demo效果：
![image](https://github.com/xxxyanchenxxx/SigKill/blob/master/Libs/1.png)

可以看到,第一次打印出的是真正的signatuer,后面经过hook后，就变了.....





## 如何使用，分成3步
首先将Libs/smali_lib中的代码复制到目标App的smali目录中，这步就不计入第一步了吧。

然后,

第一步:使用"Libs/签名获取.apk"获取到APK的真正签名信息，如下图
![image](https://github.com/xxxyanchenxxx/SigKill/blob/master/Libs/2.png)


第二步:将上一步得到的字符串替换掉"Libs/smali/com/yc/pm/SignatureFake.smali"中的字符串：
```java
.method private static getSigStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "48,-126,2,-21,48,-126,2,84,-96,3,2,1,2,2,4,77,54,-9,-92,48,13,.......

    return-object v0
.end method
```


第三步:在App的Application的attachBaseContext()函数中调用这行smali代码即可，smali:
```java
    invoke-static {}, Lcom/yc/pm/SignatureKill;->kill()V
```
