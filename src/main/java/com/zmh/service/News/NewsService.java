package com.zmh.service.News;

import com.zmh.pojo.News;

import java.util.List;

public interface NewsService {

    List<News> getNewsList();

    List<News> getNewsByNameOrType(String name, String type);

    News getNews(Integer id);

    boolean deleteNewsById(Integer id);

    boolean addNews(News news);

    boolean updateNews(News news);
}
