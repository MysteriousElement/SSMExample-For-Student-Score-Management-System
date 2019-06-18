package com.ssm.controller.exception;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExceptionResover implements HandlerExceptionResolver {
    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
        ExceptionByUser exceptionByUser = null;
        if (ex instanceof ExceptionByUser){
            exceptionByUser = (ExceptionByUser)ex;
        }else{
            exceptionByUser = new ExceptionByUser("未知错误");
        }
        //错误信息
        String message = exceptionByUser.getMessage();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("message",message);
        modelAndView.setViewName("error");
        return null;
    }
}
