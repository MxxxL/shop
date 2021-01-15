package com.hr.shop.ui;

import com.hr.shop.entity.Order;
import com.hr.shop.entity.ShopCar;
import com.hr.shop.entity.User;
import com.hr.shop.service.OrderService;
import com.hr.shop.service.ShopCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author mxxxl
 * @date 2021/1/9
 */
@Controller
public class OrderController {

    @Autowired
    private ShopCarService shopCarService;

    @Autowired
    private OrderService orderService;

    @RequestMapping("/order")
    public String order(Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<Order> list = orderService.selectOrderByUserId(user.getId());
        model.addAttribute("count", list.size());
        model.addAttribute("orders", list);
        return "/page/order";
    }

    @PostMapping("/addOrder")
    public String addOrder(@RequestParam("orderInfo") List<Integer> orderInfo,
                           Model model, HttpSession session) {
        List<ShopCar> list = shopCarService.findListByUserIds(orderInfo);
        model.addAttribute("totalPrice", shopCarService.calTotal(list));
        model.addAttribute("list", list);
        return "/page/add_order";
    }

    @PostMapping("/createOrder")
    public String createOrder(@RequestParam("orderInfo") List<Integer> orderInfo, HttpSession session) {
        User user = (User) session.getAttribute("user");
        String orderCode = orderService.addOrder(orderInfo, user.getId());
        return "redirect:/order";
    }

}
