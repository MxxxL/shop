package com.hr.shop.ui;

import com.hr.shop.entity.ShopCar;
import com.hr.shop.entity.User;
import com.hr.shop.service.ShopCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
@Controller
public class ShopCarController {

    @Autowired
    private ShopCarService shopCarService;

    @PostMapping("/add2Car")
    public String addCar(int aid, int buyNum, HttpSession session) {
        User user = (User) session.getAttribute("user");
        ShopCar shopCar = new ShopCar();
        shopCar.setArticleId(aid);
        shopCar.setBuyNum(buyNum);
        shopCar.setUserId(user.getId());
        shopCarService.add(shopCar);
        return "redirect:/myCar";
    }

    @GetMapping("/myCar")
    public String myCar(Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<ShopCar> shopCarList = shopCarService.findListByUserId(user.getId());
        double totalPrice = shopCarService.calTotal(shopCarList);
        int totalNum = shopCarService.calNum(shopCarList);
        model.addAttribute("totalNum", totalNum);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("cars", shopCarList);
        return "page/car";
    }

    @GetMapping("/qtyadd")
    public String qtyadd(int buyNum, int aid, HttpSession session) {
        User user = (User) session.getAttribute("user");
        shopCarService.updateQty(buyNum, aid, user.getId());
        return "redirect:/myCar";
    }

    @GetMapping("/delCar")
    public String delCar(int id) {
        shopCarService.delCar(id);
        return "redirect:/myCar";
    }

}
