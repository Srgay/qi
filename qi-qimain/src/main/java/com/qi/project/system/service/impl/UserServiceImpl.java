package com.qi.project.system.service.impl;

import com.qi.project.system.domain.User;
import com.qi.project.system.mapper.UserMapper;
import com.qi.project.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User login(User user) {
        user=userMapper.selectOne(user);
        return user;
    }

    @Override
    public List<User> query(User user) {
        return userMapper.select(user);
    }
    @Override
    public List<User> queryByUserName(String username) {
        List<User> stockslist = null;
        Example example = new Example(User.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andLike("username", "%" + username + "%");
        stockslist = userMapper.selectByExample(example);
        return stockslist;
    }

    @Override
    public List<User> queryAll() {
        List<User> users=userMapper.selectAll();
        return users;
    }

    @Override
    public int insrt(User user) {

        return userMapper.insert(user);
    }

    @Override
    public int updata(User user) {
        int i=0;
        try {
            Example example = new Example(User.class);
            Example.Criteria criteria = example.createCriteria();
            criteria.andEqualTo("id", user.getId());
            i=userMapper.updateByExampleSelective(user, example);
            return i;
        }catch (Exception e){
            return i;
        }
    }

    @Override
    public int delete(User user) {
        int i=0;
        try {
            Example example = new Example(User.class);
            Example.Criteria criteria = example.createCriteria();
            criteria.andEqualTo("id", user.getId());
            i=userMapper.deleteByExample(example);
            return i;
        }catch (Exception e){
            return i;
        }
    }
}
