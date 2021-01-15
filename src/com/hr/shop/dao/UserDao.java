package com.hr.shop.dao;

import com.hr.shop.entity.User;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
public interface UserDao {
    User login(String loginName, String password);

    void register(User user);

}
