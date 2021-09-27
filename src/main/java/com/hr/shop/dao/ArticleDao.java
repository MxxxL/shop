package com.hr.shop.dao;

import com.hr.shop.entity.Article;

import java.util.List;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
public interface ArticleDao {

    List<Article> findAll();

    Article findOneById(int id);

    void updateStorage(int buyNum, int id);
}
