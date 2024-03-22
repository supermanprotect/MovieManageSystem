package com.zmh.service.type;

import com.zmh.dao.type.MovieTypeMapper;
import com.zmh.pojo.MovieType;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class MovieTypeServiceImpl implements MovieTypeService {

    @Resource
    private MovieTypeMapper movieTypeMapper;

    @Override
    public List<MovieType> getMovieTypeList() {
        return movieTypeMapper.getTypeList();
    }

    @Override
    public MovieType getMovieType(String type) {
        return movieTypeMapper.getType(type);
    }

    @Override
    public boolean deleteMovieTypeByType(String type) {
        boolean flag = false;
        if(movieTypeMapper.deleteMovieTypeByType(type) > 0)
            flag = true;
        return flag;
    }

    @Override
    public boolean addMovieType(String type) {
        boolean flag = false;
        if(movieTypeMapper.addMovie(type) > 0)
            flag = true;
        return flag;
    }

    @Override
    public boolean updateMovieType(Integer id,String type) {
        boolean flag = false;
        if(movieTypeMapper.updateMovie(id,type) > 0)
            flag = true;
        return flag;
    }

}
