package com.fengqingyu.dao;

import com.fengqingyu.model.Account;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IAccountDao {

    @Select("SELECT * FROM account")
    List<Account> findAll();

    @Insert("INSERT INTO account (name,money) VALUES(#{name},#{money})")
    void saveAccount(Account account);
}
