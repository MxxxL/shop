package com.hr.shop.ui;

import com.hr.shop.entity.User;
import com.hr.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String login() {
        return "/page/login";
    }

    @PostMapping()
    public String login(String loginName, String password,
                        Model model, HttpSession session) {
        User user = userService.login(loginName, password);
        if (user == null) {
            model.addAttribute("err", "用户名或密码错误！");
            return "/page/login";
        }
        session.setAttribute("user", user);
        return "redirect:/index";
    }

    @GetMapping("/reg")
    public String reg() {
        return "/page/reg";
    }

    @PostMapping("/reg")
    public String reg(User user) {
        user.setEmail(user.getLoginName());
        user.setCreateDate(new Date());
        userService.addUser(user);
        return "redirect:/login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("user");
        return "redirect:/login";
    }
}