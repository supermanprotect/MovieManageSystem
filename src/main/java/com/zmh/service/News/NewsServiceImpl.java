package com.zmh.service.News;

import com.zmh.dao.news.NewsMapper;
import com.zmh.pojo.News;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class NewsServiceImpl implements NewsService{
    @Resource
    private NewsMapper newsMapper;

    @Override
    public List<News> getNewsList() {
        return newsMapper.getNewsList();
    }

    @Override
    public List<News> getNewsByNameOrType(String name, String type) {
        return newsMapper.getNewsByNameOrType(name, type);
    }

    @Override
    public News getNews(Integer id) {
        return newsMapper.getNewsById(id);
    }

    @Override
    public boolean deleteNewsById(Integer id) {
        boolean flag = false;
        if(newsMapper.deleteNewsById(id) > 0)
            flag = true;
        return flag;
    }

    @Override
    public boolean addNews(News news) {
        boolean flag = false;
        if(newsMapper.addNews(news) > 0)
            flag = true;
        return flag;
    }

    @Override
    public boolean updateNews(News news) {
        boolean flag = false;
        if(newsMapper.updateNews(news) > 0)
            flag = true;
        return flag;
    }
}
