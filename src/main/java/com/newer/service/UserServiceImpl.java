package com.newer.service;

import com.newer.dao.UserMapper;
import com.newer.domain.ShowUser;
import com.newer.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("UserService")
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Override
    public User findByParam(String userName, String password) {
        return userMapper.findByParam(userName, password);
    }

    @Override
    public int updatePwd(String password,int userId) {
        return userMapper.updatePwd(password,userId);
    }

    @Override
    public ShowUser findById(int userId) {
        return userMapper.findById(userId);
    }
}
