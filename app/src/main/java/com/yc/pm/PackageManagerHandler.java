package com.yc.pm;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/**
 * Created by yanchen on 17-12-11.
 */

public class PackageManagerHandler implements InvocationHandler {

    private Object object;
    public PackageManagerHandler(Object o){
        object = o;
    }
    @Override
    public Object invoke(Object o, Method method, Object[] objects) throws Throwable {
        if(method.getName().equals("getPackageInfo")){
            int flag = (Integer)objects[1];
            if((flag & PackageManager.GET_SIGNATURES) != 0){
                PackageInfo info = (PackageInfo) method.invoke(object,objects);
                info.signatures = SignatureFake.getSignature();
                return info;
            }
        }
        return method.invoke(object,objects);
    }
}
