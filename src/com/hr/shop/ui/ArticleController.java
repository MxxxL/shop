package com.hr.shop.ui;

import com.hr.shop.entity.Article;
import com.hr.shop.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
@Controller
public class ArticleController {

    @Autowired
    private ArticleService articleService;

    @RequestMapping({"/", "/index"})
    public String index(Model model) {
        List<Article> list = articleService.findAll();
        model.addAttribute("articles", list);
        return "page/index";
    }

    @GetMapping("/detail")
    public String detail(int id, Model model) {
        Article article = articleService.findOneById(id);
        model.addAttribute("a", article);
        return "page/detail";
    }
}
