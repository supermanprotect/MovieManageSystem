package com.zmh.dao.movie;

import com.zmh.pojo.Movie;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MovieMapper {

    List<Movie> getMovieByNameOrType(@Param("name") String name, @Param("type") String type);

    List<Movie> getMovieList();

    Movie getMovieById(Integer id);

    int deleteMovieById(@Param("id")Integer id);

    int addMovie(Movie movie);

    int updateMovie(Movie movie);

}
