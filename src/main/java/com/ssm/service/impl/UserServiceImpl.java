package com.ssm.service.impl;

import com.ssm.mapper.UserMapper;
import com.ssm.pojo.User;
import com.ssm.pojo.UserExample;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User login(User user) throws Exception {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUsernameEqualTo(user.getUsername());
        criteria.andPasswordEqualTo(user.getPassword());
        List<User> list = userMapper.selectByExample(userExample);
        for (User userList : list){
            if (userList.getUsername().equals(user.getUsername()) && userList.getPassword().equals(user.getPassword()))
                return userList;
        }
        return null;
    }

    @Override
    public User regist(User user) throws Exception {
        if (!findUserByName(user)){
            int rows =userMapper.insert(user);
            return rows > 0 ? user : null;
        }
        return null;
    }

    @Override
    public boolean findUserByName(User user) throws Exception {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUsernameEqualTo(user.getUsername());
        List<User> list = userMapper.selectByExample(userExample);
        for (User userList : list){
            if (userList.getUsername().equals(user.getUsername()))
                return true;
        }
        return false;
    }

    @Override
    public User update(User user) throws Exception {
        int rows =userMapper.updateByPrimaryKey(user);
        return rows > 0 ? user : null;
    }
}
