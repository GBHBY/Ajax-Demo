package com.gyb.service;

import com.gyb.bean.User;

import java.util.List;

/**
 * @Author gb
 * @Date 2020/8/20 22:57
 * @Version 1.0
 * description:
 */

public interface UserService {
    /**
     * create by: gb
     * description: 用户登陆，根据用户名判断密码是否正确
     * create time: 2020/8/21 23:30
     *
     * @param user
     * @return
     */
    User check(User user);

    /**
     * create by: gb
     * description: 判断用户是否存在
     * create time: 2020/8/22 14:41
     *
     * @param user
     * @return
     */
    boolean isUser(User user);
/**
 * create by: gb
 * description: 从数据库中查询所有的名字
 * create time: 2020/8/23 17:41
 * @param
 * @return
 */
    List<String> findAllName();
}
