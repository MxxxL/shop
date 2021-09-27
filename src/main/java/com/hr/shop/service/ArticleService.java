package com.hr.shop.service;

import com.hr.shop.entity.Article;

import java.util.List;

/**
 * @author mxxxl
 * @date 2021/1/8
 */
public interface ArticleService {

    List<Article> findAll();

    Article findOneById(int id);
}
