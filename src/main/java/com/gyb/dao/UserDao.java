package com.gyb.dao;

import com.gyb.bean.User;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @Author gb
 * @Date 2020/8/20 22:57
 * @Version 1.0
 * description:
 */
public interface UserDao {
    /**
     * create by: gb
     * description: 检查user是否存在
     * create time: 2020/8/21 23:38
     *
     * @param user
     * @return
     */
    User check(User user);

    /**
     * create by: gb
     * description: TODO
     * create time: 2020/8/22 14:45
     *
     * @param user
     * @return
     */
    boolean isUser(User user);
/**
 * create by: gb
 * description: 从数据库中查询所有的名字
 * create time: 2020/8/23 17:42
 * @param
 * @return
 */
    List<String> findAllName();
}
