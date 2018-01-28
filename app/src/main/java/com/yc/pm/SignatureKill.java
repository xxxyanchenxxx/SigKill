package com.yc.pm;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.IBinder;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;

/**
 * Created by yanchen on 17-12-10.
 */

public class SignatureKill {
    public static void kill() {
        try {
            WebViewUpdateServiceStub.replaceService();
        }catch (Exception e){
            e.printStackTrace();
        }
        try {
            PackageManagerStub.replaceService();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
