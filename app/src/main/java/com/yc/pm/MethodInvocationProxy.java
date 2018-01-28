package com.yc.pm;

import android.content.Context;

import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;

/**
 * Created by yanchen on 18-1-28.
 */

public abstract class MethodInvocationProxy<T extends MethodInvocationStub>  {

    protected T mInvocationStub;

    public MethodInvocationProxy(T invocationStub) {
        this.mInvocationStub = invocationStub;
        onBindMethods();
        afterHookApply(invocationStub);

    }

    protected void onBindMethods() {

    }

    public MethodProxy addMethodProxy(MethodProxy methodProxy) {
        return mInvocationStub.addMethodProxy(methodProxy);
    }

    protected void afterHookApply(T delegate) {
    }

    public T getInvocationStub() {
        return mInvocationStub;
    }
}