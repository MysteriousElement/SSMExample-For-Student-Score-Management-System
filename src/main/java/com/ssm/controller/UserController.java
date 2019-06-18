package com.ssm.controller;

import com.ssm.controller.validation.ValidGroupByUser;
import com.ssm.pojo.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@SessionAttributes(value = {"user","objectErrors"})
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("getLogin")
    public @ResponseBody User login(@Validated(ValidGroupByUser.class)User user, BindingResult bindingResult, Model model){
        //进行校验
        if (bindingResult.hasErrors()){
            List<ObjectError> objectErrors = bindingResult.getAllErrors();
            model.addAttribute("objectErrors",objectErrors);
        }
        //效验通过后进行主体操作
        User newUser = null;
        try {
            newUser = userService.login(user);
            model.addAttribute("user",newUser);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return newUser;
    }

    @RequestMapping("getRegist")
    public @ResponseBody User regist(@Validated(ValidGroupByUser.class)User user, BindingResult bindingResult,Model model){
        //进行校验
        if (bindingResult.hasErrors()){
            List<ObjectError> objectErrors = bindingResult.getAllErrors();
            model.addAttribute("objectErrors",objectErrors);
        }
        //效验通过后进行主体操作
        User newUser = null;
        try {
            newUser = userService.regist(user);
            model.addAttribute("user",newUser);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return newUser;
    }

    @RequestMapping("modUser")
    public @ResponseBody User update(User user,Model model){
        User newUser = null;
        try {
            newUser = userService.update(user);
            System.out.println(newUser.getEmail());
            model.addAttribute("user",newUser);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return newUser;
    }

    @RequestMapping("getLogout")
    public  String logout(HttpSession session){
        session.invalidate();
        return "login";
    }

}
