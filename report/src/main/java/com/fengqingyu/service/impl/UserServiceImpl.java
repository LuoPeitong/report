package com.fengqingyu.service.impl;

import com.fengqingyu.dao.IUserDao;
import com.fengqingyu.model.User;
import com.fengqingyu.service.UserService;
import com.fengqingyu.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private IUserDao iUserDao;

    @Override
    public Result login(User user) {
        User sqlUser = iUserDao.queryByUsername(user);
        if (user.getPassword().equals(sqlUser.getPassword())) {
            return Result.ok(sqlUser,"登录验证通过");
        } else {
            return Result.error();
        }
    }
}
