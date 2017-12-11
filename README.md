# SigKill
App一键绕过签名验证
Hook了PackaegManager，返回我们伪装的签名信息

##Demo效果：
![image](https://github.com/xxxyanchenxxx/SigKill/blob/master/Libs/1.png)



##如何使用，分成3步
首先将Libs/smali_lib中的代码复制到目标App中，不算入步骤，好了，接下来：

第一步:使用"Libs/签名获取.apk"获取到APK的真正签名信息，如下图
![image](https://github.com/xxxyanchenxxx/SigKill/blob/master/Libs/2.png)


第二步:将上一步得到的字符串替换掉"Libs/smali/com/yc/pm/SignatureFake.smali"中的字符串：
![image](https://github.com/xxxyanchenxxx/SigKill/blob/master/Libs/3.png)


第三步:在App的Application的attachBaseContext()函数中调用我们的smali代码，smali:
    invoke-static {}, Lcom/yc/pm/SignatureKill;->kill()V
