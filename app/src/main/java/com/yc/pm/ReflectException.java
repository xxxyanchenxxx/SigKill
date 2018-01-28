package com.yc.pm;

/**
 * Created by yanchen on 18-1-28.
 */

public class ReflectException extends RuntimeException {

    public ReflectException(String message, Throwable cause) {
        super(message, cause);
    }

    public ReflectException(Throwable cause) {
        super(cause);
    }
}
