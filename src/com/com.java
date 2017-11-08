package com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class com {
    @RequestMapping("/hello")
    public String hello(){
        return "hello";
    }
    @RequestMapping("login")
    public String login(){
        return "login";
    }
    @RequestMapping("json")
    public String json(){
        return "jsonTest";
    }
}
