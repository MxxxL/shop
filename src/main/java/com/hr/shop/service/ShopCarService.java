package com.hr.shop.service;

import com.hr.shop.entity.ShopCar;

import java.util.List;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
public interface ShopCarService {

    int add(ShopCar shopCar);

    ShopCar findById(int id);

    List<ShopCar> findListByUserId(int userId);

    double calTotal(List<ShopCar> shopCars);

    int calNum(List<ShopCar> shopCars);

    void updateQty(int buyNum, int articleId, int userId);

    void delCar(int id);

    List<ShopCar> findListByUserIds(List<Integer> orderInfo);

}
