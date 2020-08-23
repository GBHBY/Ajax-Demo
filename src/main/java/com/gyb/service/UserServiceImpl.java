package com.gyb.service;

import com.gyb.bean.User;
import com.gyb.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author gb
 * @Date 2020/8/21 23:30
 * @Version 1.0
 * description:
 */
@Service(value = "userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public User check(User user) {
        User user1 = userDao.check(user);
        System.out.println(user1+"==========");
        if (user != null) {
            return user1;
        } else {
            return null;
        }
    }

    @Override
    public boolean isUser(User user) {
        if (userDao.isUser(user)) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public List<String> findAllName() {
        return userDao.findAllName();
    }
}
