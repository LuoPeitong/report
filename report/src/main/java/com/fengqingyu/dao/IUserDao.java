package com.fengqingyu.dao;

import com.fengqingyu.model.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface IUserDao {

    @Select("SELECT username,password FROM user WHERE username = #{username}")
    User queryByUsername(User user);
}
