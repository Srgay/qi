package com.qi.project.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.alipay.api.domain.Person;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qi.framework.web.domain.AjaxResult;
import com.qi.project.fs.domain.Article;
import com.qi.project.fs.service.ArticleService;
import com.qi.project.system.domain.User;
import com.qi.project.system.mapper.UserMapper;
import com.qi.project.system.service.UserService;
import com.qi.project.test.controller.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login")
    @ResponseBody
    public AjaxResult login(User user, String code, HttpServletRequest request) {
        HttpSession session = request.getSession();//获取session并将userName存入session对象
        String scode = (String) session.getAttribute("Code");
        try {
            if (!code.equalsIgnoreCase(scode)) {
                return AjaxResult.error("验证码错误");
            } else {
                user = userService.login(user);
                if (0 != user.getId()) {
                    return AjaxResult.success(user);
                }
            }
        } catch (NullPointerException e) {
            return AjaxResult.error("用户名或密码错误");
        }
        return AjaxResult.error("用户名或密码错误");
    }

    @RequestMapping(value = "/loginadmin")
    @ResponseBody
    public AjaxResult loginAdmin(User user, HttpServletRequest request) {
        user = userService.login(user);
        try {
            if (0 != user.getId()) {
                if (2 == Integer.valueOf(user.getRole())) {
                    return AjaxResult.success(user);
                } else {
                    return AjaxResult.error("权限不足");
                }
            }

        } catch (NullPointerException e) {
            return AjaxResult.error("用户名或密码错误");
        }
        return AjaxResult.error("用户名或密码错误");
    }

    @RequestMapping(value = "/users")
    @ResponseBody
    public AjaxResult loginAdmin(String pagenum, String pagesize, String query) {
        if (query != "") {
            PageHelper.startPage(Integer.parseInt(pagenum), Integer.parseInt(pagesize));
            User user = new User();
            user.setUsername(query);
            List<User> users = userService.queryByUserName(query);
            PageInfo<User> pageInfo = new PageInfo<User>(users);
            return AjaxResult.success(pageInfo);
        } else {
            PageHelper.startPage(Integer.parseInt(pagenum), Integer.parseInt(pagesize));
            List<User> users = userService.queryAll();
            PageInfo<User> pageInfo = new PageInfo<User>(users);
            return AjaxResult.success(pageInfo);
        }
    }

    @RequestMapping(value = "/queryuser")
    @ResponseBody
    public AjaxResult queryuser(User user) {
        user = userService.query(user).get(0);
        return AjaxResult.success(" ", user);
    }

    @RequestMapping(value = "/adduser")
    @ResponseBody
    public AjaxResult adduser(User user) {
        int i = 0;
        i = userService.insrt(user);
        if (i == 0) {
            return AjaxResult.error("失败");
        } else {
            user = userService.login(user);
            return AjaxResult.success("成功", user);
        }
    }

    @RequestMapping(value = "/updatauser")
    @ResponseBody
    public AjaxResult updatauser(User user) {
        int i = 0;
        i = userService.updata(user);
        if (i == 0) {
            return AjaxResult.error("失败");
        } else {
            user = userService.login(user);
            return AjaxResult.success("成功", user);
        }
    }

    @RequestMapping(value = "/deleteuser")
    @ResponseBody
    public AjaxResult deleteuser(User user) {
        int i = 0;
        i = userService.delete(user);
        if (i == 0) {
            return AjaxResult.error("失败");
        } else {
            user = userService.login(user);
            return AjaxResult.success("成功", user);
        }
    }


}
