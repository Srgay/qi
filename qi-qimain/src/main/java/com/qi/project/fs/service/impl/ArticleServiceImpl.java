package com.qi.project.fs.service.impl;

import com.qi.project.fs.domain.Article;
import com.qi.project.fs.mapper.ArticleMapper;
import com.qi.project.fs.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleMapper articleMapper;
    @Override
    public List<Article> queryAll() {

        List<Article> articlelist = null;
        articlelist = articleMapper.selectAll();
        return articlelist;

    }
}
