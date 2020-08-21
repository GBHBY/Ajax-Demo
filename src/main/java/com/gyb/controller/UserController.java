package com.gyb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author gb
 * @Date 2020/8/20 22:12
 * @Version 1.0
 * description:
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @RequestMapping("test")
    public String test() {
        System.out.println("213213123");
        return "demo";
    }

    @RequestMapping(value = "check",method = RequestMethod.POST)
    @ResponseBody
    public void check(){


    }

}
