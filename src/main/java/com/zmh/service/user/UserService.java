package com.zmh.service.user;

import com.zmh.pojo.User;

public interface UserService {


    User userLogin(String username, String password);

    int updatePassword(String password);
    int addUser(User user);
}
