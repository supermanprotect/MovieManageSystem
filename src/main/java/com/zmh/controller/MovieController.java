package com.zmh.controller;

import com.zmh.pojo.Movie;
import com.zmh.pojo.MovieType;
import com.zmh.service.Movie.MovieService;
import com.zmh.service.type.MovieTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MovieController {
    @Autowired
    private MovieService movieService;
    @Autowired
    private MovieTypeService movieTypeService;

    @RequestMapping("/movieList.html")
    public String getMovieList(Model model, HttpSession session){
        List<Movie> movieList = movieService.getMovieList();
        List<MovieType> movieTypeList = movieTypeService.getMovieTypeList();
        session.setAttribute("movieTypeList",movieTypeList);
        model.addAttribute("movieList",movieList);
        return "movie";
    }


    @RequestMapping("/delMovie/{movie.id}")
    public String deleteMovie(@PathVariable("movie.id")Integer id){
        System.out.println(id);
        movieService.deleteMovieById(id);
        return "redirect:/movieList.html";
    }


    @RequestMapping("/toUpdateMoviePage/{movie.id}")
    public String toUpdate(Model model,@PathVariable("movie.id")Integer id){
        model.addAttribute("id",id);
        Movie movies = movieService.getMovie(id);
        model.addAttribute("movie", movies);
        return "updateMovie";
    }


    @RequestMapping("/updateMovie")
    public String updateMovie(Model model, Movie movie){
        movieService.updateMovie(movie);
        return "redirect:/movieList.html";
    }


}
