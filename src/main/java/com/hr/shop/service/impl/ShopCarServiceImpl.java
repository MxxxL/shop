package com.hr.shop.service.impl;

import com.hr.shop.dao.ShopCarDao;
import com.hr.shop.entity.ShopCar;
import com.hr.shop.service.ShopCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
@Service("shopCarService")
public class ShopCarServiceImpl implements ShopCarService {

    @Autowired
    private ShopCarDao shopCarDao;

    @Override
    public int add(ShopCar shopCar) {
        // 如果存在购物车 则在已有的购物车上增加数量
        ShopCar shopCar1 = shopCarDao.findById(shopCar.getId());
        int result;
        if (shopCar1 == null) {
            result = shopCarDao.add(shopCar);
        } else {
            shopCar.setBuyNum(shopCar1.getBuyNum() + shopCar.getBuyNum());
            result = shopCarDao.edit(shopCar);
        }
        return result;
    }

    @Override
    public ShopCar findById(int id) {
        return shopCarDao.findById(id);
    }

    @Override
    public List<ShopCar> findListByUserId(int userId) {
        List<ShopCar> list = shopCarDao.findListByUserId(userId);
        return list;
    }

    @Override
    public double calTotal(List<ShopCar> shopCars) {
        double totalPrice = 0.00;
        for (ShopCar shopCar : shopCars) {
            totalPrice = totalPrice + shopCar.getPrice() * shopCar.getDiscount() * shopCar.getBuyNum();
        }
        // 每满300减100
        totalPrice = totalPrice - ((int) totalPrice / 300) * 100;
        return totalPrice;
    }

    @Override
    public int calNum(List<ShopCar> shopCars) {
        int totalNum = 0;
        for (ShopCar shopCar :
                shopCars) {
            totalNum = totalNum + shopCar.getBuyNum();
        }
        return totalNum;
    }

    @Override
    public void updateQty(int buyNum, int articleId, int userId) {
        shopCarDao.editQty(buyNum, articleId, userId);
    }

    @Override
    public void delCar(int id) {
        shopCarDao.delQty(id);
    }

    @Override
    public List<ShopCar> findListByUserIds(List<Integer> orderInfo) {
        return shopCarDao.selectByIds(orderInfo);
    }
}
