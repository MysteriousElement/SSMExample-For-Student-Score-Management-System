package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexController {

    @RequestMapping("getReg")
    public String getReg(){
        return "regist";
    }

    @RequestMapping("getLog")
    public String getLog(){
        return "login";
    }

}
