package com.qi.project.system.service;

import com.qi.project.system.domain.User;
import com.qi.project.test.controller.user;

import java.util.List;

public interface UserService {
    public User login(User user);
    public List<User> query(User user);
    public List<User> queryByUserName(String username);
    public List<User> queryAll();
    public int insrt(User user);
    public int updata(User user);
    public int delete(User user);
}
