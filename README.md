# SigKill
App一键绕过签名验证
Hook了PackaegManager，返回我们伪装的签名信息

##Demo效果：
![image](https://github.com/xxxyanchenxxx/SigKill/blob/master/Libs/1.png)



##如何使用，分成3步
首先将Libs/smali_lib中的代码复制到目标App中，不算入步骤，好了，接下来：

第一步:使用"Libs/签名获取.apk"获取到APK的真正签名信息，如下图
```java
adb logcat -c && adb logcat | grep xxxx
12-11 13:49:31.177 23175 23175 E xxxxxxxxxxx: xxxxxxxxxxxx,sig:48,-126,2,-21,48,-126,2,84,-96,3,2,1,2,2,4,
77,54,-9,-92,48,13,6,9,42,-122,72,-122,-9,13,1,1,5,5,0,48,-127,-71,49,11,48,9,6,3,85,4,6,19,2,56,54,49,18,
48,16,6,3,85,4,8,19,9,71,117,97,110,103,100,111,110,103,49,17,48,15,6,3,85,4,7,19,8,83,104,101,110,122,104,
101,110,49,53,48,51,6,3,85,4,10,19,44,84,101,110,99,101,110,116,32,84,101,99,104,110,111,108,111,103,121,40
,83,104,101,110,122,104,101,110,41,32,67,111..........
12-11 13:49:31.177 23175 23175 E xxxxxxxxxxx: xxxxxxxxxxxx,hasoCode:157480375
```


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
