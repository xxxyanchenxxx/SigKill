package com.yc.pm;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;

import java.io.FileDescriptor;
import java.lang.reflect.Method;

/**
 * Created by yanchen on 18-1-28.
 */

public class BinderInvocationStub extends MethodInvocationStub<IInterface> implements IBinder {

    private static final String TAG = BinderInvocationStub.class.getSimpleName();
    private IBinder mBaseBinder;

    public BinderInvocationStub(IInterface mBaseInterface) {
        super(mBaseInterface);
        mBaseBinder = getBaseInterface() != null ? getBaseInterface().asBinder() : null;
        addMethodProxy(new AsBinder());
    }

    public void replaceService(String name) {
        if (mBaseBinder != null) {
            Object sCache = Reflect.on("android.os.ServiceManager").get("sCache");
            Reflect.on(sCache).call("put",name,this);
        }
    }

    private final class AsBinder extends MethodProxy {

        @Override
        public String getMethodName() {
            return "asBinder";
        }

        @Override
        public Object call(Object who, Method method, Object... args) throws Throwable {
            return BinderInvocationStub.this;
        }
    }


    @Override
    public String getInterfaceDescriptor() throws RemoteException {
        return mBaseBinder.getInterfaceDescriptor();
    }

    @Override
    public boolean pingBinder() {
        return mBaseBinder.pingBinder();
    }

    @Override
    public boolean isBinderAlive() {
        return mBaseBinder.isBinderAlive();
    }

    @Override
    public IInterface queryLocalInterface(String descriptor) {
        return getProxyInterface();
    }

    @Override
    public void dump(FileDescriptor fd, String[] args) throws RemoteException {
        mBaseBinder.dump(fd, args);
    }

    @TargetApi(Build.VERSION_CODES.HONEYCOMB_MR2)
    @Override
    public void dumpAsync(FileDescriptor fd, String[] args) throws RemoteException {
        mBaseBinder.dumpAsync(fd, args);
    }

    @Override
    public boolean transact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        return mBaseBinder.transact(code, data, reply, flags);
    }

    @Override
    public void linkToDeath(DeathRecipient recipient, int flags) throws RemoteException {
        mBaseBinder.linkToDeath(recipient, flags);
    }

    @Override
    public boolean unlinkToDeath(DeathRecipient recipient, int flags) {
        return mBaseBinder.unlinkToDeath(recipient, flags);
    }
}

