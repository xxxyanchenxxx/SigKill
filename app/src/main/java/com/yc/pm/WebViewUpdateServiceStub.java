package com.yc.pm;

import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;

import java.lang.reflect.Method;

/**
 * Created by yanchen on 18-1-28.
 */

public class WebViewUpdateServiceStub extends MethodInvocationProxy<MethodInvocationStub<IInterface>> {
    private static String WEBVIEW_UPDATE_SERVICE_NAME = "webviewupdate";

    public WebViewUpdateServiceStub() {
        super(new MethodInvocationStub<>(getInterface()));
        init();

    }

    public static void replaceService(){
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP){
            try {
                WebViewUpdateServiceStub serviceStub = new WebViewUpdateServiceStub();
            }catch (Exception e){

            }
        }
    }

    private static IInterface getInterface(){
        Object service =  Reflect.on("android.os.ServiceManager").
                call("getService",WEBVIEW_UPDATE_SERVICE_NAME).get();

        IInterface asInterface =  Reflect.on("android.webkit.IWebViewUpdateService$Stub").call("asInterface",service).get();
        return asInterface;
    }

    private static IBinder getBinder(){
       return Reflect.on("android.os.ServiceManager").
                call("getService",WEBVIEW_UPDATE_SERVICE_NAME).get();
    }

    private void init(){
        addMethodProxy(new WaitForAndGetProvider());

        getBinder();
        BinderInvocationStub pmHookBinder = new BinderInvocationStub(getInvocationStub().getBaseInterface());
        pmHookBinder.copyMethodProxies(getInvocationStub());
        pmHookBinder.replaceService(WEBVIEW_UPDATE_SERVICE_NAME);
    }

    private static class WaitForAndGetProvider extends MethodProxy {
        @Override
        public String getMethodName() {
            return "waitForAndGetProvider";
        }

        @Override
        public Object call(Object who, Method method, Object... args) throws Throwable {
            Object result =  method.invoke(who,args);
            if(result != null){
                PackageInfo inf = Reflect.on(result).get("packageInfo");
                if(inf != null){
                    Reflect.on(inf).set("signatures",SignatureFake.getSignature());
                }
            }
            return result;
        }
    }
}
