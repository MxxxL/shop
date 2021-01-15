package com.hr.shop.service.impl;

import com.hr.shop.dao.ArticleDao;
import com.hr.shop.entity.Article;
import com.hr.shop.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
@Service("articleService")
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleDao articleDao;

    @Override
    public List<Article> findAll() {
        List<Article> list = articleDao.findAll();
        return list;
    }

    @Override
    public Article findOneById(int id) {
        Article article = articleDao.findOneById(id);
        return article;
    }


}
