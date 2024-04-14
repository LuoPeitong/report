package com.fengqingyu.service;

import com.fengqingyu.model.User;
import com.fengqingyu.vo.Result;

public interface UserService {

    Result login(User user);
}
