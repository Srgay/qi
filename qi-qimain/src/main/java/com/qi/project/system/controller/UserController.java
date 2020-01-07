package com.qi.project.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.qi.project.fs.domain.Article;
import com.qi.project.fs.service.ArticleService;
import com.qi.project.system.domain.User;
import com.qi.project.system.mapper.UserMapper;
import com.qi.project.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login")
    @ResponseBody
    public String login(User user) {
        user=userService.login(user);
        System.out.println(user);

        return "ssss";
    }
}
