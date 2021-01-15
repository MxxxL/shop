package com.hr.shop.service.impl;

import com.hr.shop.dao.UserDao;
import com.hr.shop.entity.User;
import com.hr.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User login(String loginName, String password) {
        User user = userDao.login(loginName, password);
        return user;
    }

    @Override
    public void addUser(User user) {
        userDao.register(user);
    }

}
