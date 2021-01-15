package com.hr.shop.dao;

import com.hr.shop.entity.ShopCar;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
public interface ShopCarDao {

    ShopCar findById(int id);

    int add(ShopCar shopCar);

    int edit(ShopCar shopCar);

    List<ShopCar> findListByUserId(int userId);

    void editQty(int buyNum, int articleId, int userId);

    void delQty(int id);

    List<ShopCar> selectByIds(@Param("ids") List<Integer> orderInfo);
}
