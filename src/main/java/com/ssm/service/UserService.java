package com.ssm.service;

import com.ssm.pojo.User;

public interface UserService {

    public User login(User user)throws Exception;
    public User regist(User user)throws Exception;
    public boolean findUserByName(User user) throws Exception;
    public User update(User user) throws Exception;
}
