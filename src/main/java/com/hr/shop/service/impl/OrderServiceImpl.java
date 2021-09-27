package com.hr.shop.service.impl;

import com.hr.shop.dao.ArticleDao;
import com.hr.shop.dao.OrderDao;
import com.hr.shop.dao.OrderItemDao;
import com.hr.shop.dao.ShopCarDao;
import com.hr.shop.entity.Order;
import com.hr.shop.entity.OrderItem;
import com.hr.shop.entity.ShopCar;
import com.hr.shop.service.OrderService;
import com.hr.shop.service.ShopCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author mxxxl
 * @date 2021/1/10
 */
@Service("OrderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private ShopCarDao shopCarDao;

    @Autowired
    private ShopCarService shopCarService;

    @Autowired
    private OrderDao orderDao;

    @Autowired
    private OrderItemDao orderItemDao;

    @Autowired
    private ArticleDao articleDao;

    @Override
    public String addOrder(List<Integer> orderInfo, int userId) {
        // 生成订单号
        Date now = new Date();
        String code = "OP-";
        StringBuilder sb = new StringBuilder();
        sb.append(code);
        sb.append(new SimpleDateFormat("yyyyMMddHHmmss").format(now));
        sb.append("-").append(userId);

        // 总金额
        List<ShopCar> itemList = shopCarDao.selectByIds(orderInfo);
        double totalPrice = shopCarService.calTotal(itemList);

        for (ShopCar shopCar : itemList) {
            if (shopCar.getBuyNum() > shopCar.getStorage()) {
                throw new RuntimeException(shopCar.getTitle() + "库存不足");
            }
        }

        // 插入 ec_order 表
        Order order = new Order();
        order.setOrderCode(sb.toString());
        order.setCreateDate(now);
        order.setSendDate(null);
        order.setStatus("下单成功");
        order.setUserId(userId);
        order.setAmount(totalPrice);

        orderDao.insert(order);
        // 插入 ec_order_item表
        for (ShopCar shopCar : itemList) {
            OrderItem item = new OrderItem();
            item.setOrderId(order.getId());
            item.setArticleId(shopCar.getArticleId());
            item.setOrderNum(shopCar.getBuyNum());
            orderItemDao.insert(item);
            // 删除购物车已购买选项
            shopCarDao.delQty(shopCar.getId());
            // 减少库存数量
            articleDao.updateStorage(-1 * shopCar.getBuyNum(), shopCar.getId());
        }

        // 返回订单号
        return sb.toString();
    }

    @Override
    public List<Order> selectOrderByUserId(int userId) {
        return orderDao.selectOrderByUserId(userId);
    }
}
