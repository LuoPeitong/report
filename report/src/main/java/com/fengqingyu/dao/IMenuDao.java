package com.fengqingyu.dao;

import com.fengqingyu.model.Menu;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IMenuDao {

    @Select("SELECT * FROM menu ORDER BY id")
    List<Menu> getAll();
}
