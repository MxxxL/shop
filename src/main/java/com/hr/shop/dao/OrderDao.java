package com.hr.shop.dao;

import com.hr.shop.entity.Order;

import java.util.List;

/**
 * @author mxxxl
 * @date 2021/1/8
 */

public interface OrderDao {


    void insert(Order order);

    List<Order> selectOrderByUserId(int userId);
}