package com.hr.shop.service;

import com.hr.shop.entity.User;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
public interface UserService {

    User login(String loginName, String password);

    void addUser(User user);
}
