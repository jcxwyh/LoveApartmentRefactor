package com.cdsxt.web.controller;

import com.cdsxt.po.Admin;
import com.cdsxt.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author jcx
 * @className LoginController
 * @description TODO
 */
@Controller
public class LoginController {

    @Autowired
    LoginService loginService;

    @RequestMapping({"","/"})
    public String toLogin(){
        return "login";
    }
    @RequestMapping(value="login",method= RequestMethod.POST)
    public String valiLogin(Admin admin){
        System.out.println(admin);
        boolean b = loginService.valiUser(admin);
        if(b){
            return "welcome";
        }else{
            return "login";
        }

    }
}
