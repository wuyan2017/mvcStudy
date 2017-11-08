package com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class com {
    /*@RequestMapping("/hello")
    public String hello(){
        return "hello";
    }*/
    @RequestMapping("login")
    public String login(){
        return "login";
    }
    @RequestMapping("login/port")
    public String log(){
        return "hello";
    }

    @RequestMapping("json")
    public String json(){
        return "jsonTest";
    }
    @RequestMapping("/hello")
    public void basicData(Integer username){
        System.out.println(username);//10
    }
    @RequestMapping("/dataBind")
    public String pojo(User user){
        System.out.println(user);
        return "dataBind";
    }
    @RequestMapping("/pojo")
    public String po(User user){
        System.out.println(user);
        return "hello";
    }
}
