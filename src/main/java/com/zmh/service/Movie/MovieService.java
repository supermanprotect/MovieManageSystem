package com.zmh.service.Movie;

import com.zmh.pojo.Movie;

import java.util.List;

public interface MovieService {

    List<Movie> getMovieList();

    List<Movie> getMovieByNameOrType(String name, String type);

    Movie getMovie(Integer id);

    boolean deleteMovieById(Integer id);

    boolean addMovie(Movie movie);

    boolean updateMovie(Movie movie);


}
