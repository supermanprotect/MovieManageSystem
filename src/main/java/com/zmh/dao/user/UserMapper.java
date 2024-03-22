package com.zmh.dao.user;

import com.zmh.pojo.User;

public interface UserMapper {

    User getLoginUser(String username);

    int updatePassword(String password);
    int addUser(User user);
}
