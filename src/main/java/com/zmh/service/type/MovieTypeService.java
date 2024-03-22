package com.zmh.service.type;

import com.zmh.pojo.MovieType;

import java.util.List;

public interface MovieTypeService {

    List<MovieType> getMovieTypeList();

    MovieType getMovieType(String type);

    boolean deleteMovieTypeByType(String type);

    boolean addMovieType(String type);

    boolean updateMovieType(Integer id,String type);
}
