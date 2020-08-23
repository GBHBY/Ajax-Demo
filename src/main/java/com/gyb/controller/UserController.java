package com.gyb.controller;

import com.alibaba.fastjson.JSON;
import com.gyb.bean.User;
import com.gyb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author gb
 * @Date 2020/8/20 22:12
 * @Version 1.0
 * description:
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Resource(name = "userService")
    private UserService userService;

    private Map<String, Object> result = new HashMap<>();

    @RequestMapping("test")
    public String test() {
        System.out.println("213213123");
        return "demo";
    }

    @RequestMapping(value = "logIn", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> logIn(User user) {
        System.out.println(user);
        if (userService.check(user) != null) {
            result.put("success", true);
            return result;

        } else {
            result.put("success", false);
            result.put("msg", "登陆失败");
            return result;
        }
    }

    /**
     * create by: gb
     * description: ajax测试
     * create time: 2020/8/23 17:22
     *
     * @param httpServletRequest
     * @param httpServletResponse
     * @param userName            从页面传递过来的数据
     * @return
     */
    @RequestMapping("testAjax")
    public String testAjax(@RequestParam String userName, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException {
        httpServletResponse.setContentType("application/json");
        httpServletRequest.setCharacterEncoding("UTF-8");
        httpServletResponse.setCharacterEncoding("UTF-8");

//        返回json
        PrintWriter out = httpServletResponse.getWriter();
//        从数据库中查询所有的名字
        List<String> allName = userService.findAllName();
        List<String> result = new ArrayList<>();
//          如果名字存在就添加1，如果名字为空添加2，否则添加3，也就是不存在
        if (allName.contains(userName)) {
            result.add("1");
        } else if(userName==""){
            result.add("2");
        }else{
            result.add("3");
        }
//        转json
        String s = JSON.toJSONString(result);
        out.write(s);
        out.close();
        return "demo";
    }

}
