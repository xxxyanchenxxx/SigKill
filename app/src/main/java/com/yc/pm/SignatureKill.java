package com.yc.pm;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * Created by yanchen on 17-12-10.
 */

public class SignatureKill {
    public static void kill() {
        try {
            Application mInitialApplication;
            // 获取全局的ActivityThread对象
            Class<?> activityThreadClass = Class.forName("android.app.ActivityThread");
            Method currentActivityThreadMethod = activityThreadClass.getDeclaredMethod("currentActivityThread");
            Object currentActivityThread = currentActivityThreadMethod.invoke(null);

            Field mInitialApplicationField = activityThreadClass.getDeclaredField("mInitialApplication");
            mInitialApplicationField.setAccessible(true);
            mInitialApplication = (Application)mInitialApplicationField.get(currentActivityThread);

            // 获取ActivityThread里面原始的 sPackageManager
            Field sPackageManagerField = activityThreadClass.getDeclaredField("sPackageManager");
            sPackageManagerField.setAccessible(true);
            Object sPackageManager = sPackageManagerField.get(currentActivityThread);
            PackageManagerHandler packageManagerHandler = new PackageManagerHandler(sPackageManager);

            // 准备好代理对象, 用来替换原始的对象
            Class<?> iPackageManagerInterface = Class.forName("android.content.pm.IPackageManager");
            Object proxy = Proxy.newProxyInstance(iPackageManagerInterface.getClassLoader(),
                    new Class<?>[]{iPackageManagerInterface}, packageManagerHandler);

            // 1. 替换掉ActivityThread里面的 sPackageManager 字段
            sPackageManagerField.set(currentActivityThread, proxy);

            // 2. 替换 ApplicationPackageManager里面的 mPM对象
            PackageManager pm = mInitialApplication.getPackageManager();
            Field mPmField = pm.getClass().getDeclaredField("mPM");
            mPmField.setAccessible(true);
            mPmField.set(pm, proxy);


            Class cls = Class.forName("android.os.ServiceManager");
            Field sCacheField = cls.getDeclaredField("sCache");
            sCacheField.setAccessible(true);
            sCacheField.set("package", proxy);
        } catch (Throwable e) {
            e.printStackTrace();
        }

    }
}
