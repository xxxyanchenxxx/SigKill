package com.yc.pm;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

import java.lang.reflect.Method;

/**
 * Created by yanchen on 18-1-28.
 */

public abstract class MethodProxy {

    private boolean enable = true;

    public MethodProxy() {

    }

    public abstract String getMethodName();

    public boolean beforeCall(Object who, Method method, Object... args) {
        return true;
    }

    public Object call(Object who, Method method, Object... args) throws Throwable {
        return method.invoke(who, args);
    }

    public Object afterCall(Object who, Method method, Object[] args, Object result) throws Throwable {
        return result;
    }

    public boolean isEnable() {
        return true;
    }


    @Override
    public String toString() {
        return "Method : " + getMethodName();
    }
}

