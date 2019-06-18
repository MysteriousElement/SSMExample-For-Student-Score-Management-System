package com.ssm.controller.exception;

public class ExceptionByUser extends Exception {

    //异常信息
    public String message;

    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public ExceptionByUser(String message) {
        super(message);
        this.message = message;
    }
}
