package com.hr.shop.service;

import com.hr.shop.entity.Order;

import java.util.List;

/**
 * @author mxxxl
 * @date 2021/1/10
 */
public interface OrderService {
    String addOrder(List<Integer> orderInfo, int userId);

    List<Order> selectOrderByUserId(int userId);
}
