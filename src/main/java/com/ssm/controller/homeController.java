package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController {

    @RequestMapping("getHome")
    public String getHome(){
        return "/home/index";
    }

    @RequestMapping("getPage1")
    public String getPage1(){
        return "/home/page1";
    }

    @RequestMapping("getPage2")
    public String getPage2(){
        return "/home/page2";
    }

    @RequestMapping("getPage3")
    public String getPage3(){
        return "/home/page3";
    }

    @RequestMapping("getPage4")
    public String getPage4(){
        return "/home/page4";
    }

    @RequestMapping("getPage5")
    public String getPage5(){
        return "/home/page5";
    }

    @RequestMapping("getPage6")
    public String getPage6(){
        return "/home/page6";
    }

    @RequestMapping("getSiteInfo")
    public String getSiteInfo(){
        return "/home/siteInfo";
    }
}
