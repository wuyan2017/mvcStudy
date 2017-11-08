package com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
	//请求为json,返回json
	@RequestMapping("/requestJson")
	//@RequestBody将请求信息的json串转成user对象
	//@ResponseBody将user对象转成json输出
	@ResponseBody
	public User requestJson(@RequestBody User user) throws Exception{
		System.out.println(user);
		return user;//由于@ResponseBody注解，将user转成json格式返回
	}
	
	//请求为key/value,返回json
	@RequestMapping("/requestKeyValue")
	//@RequestBody将请求信息的json串转成user对象
	@ResponseBody
	public User requestKeyValue(User user) throws Exception{
		System.out.println(user);
		return user;
	}
}
