package com.fengqingyu.dao;

import com.fengqingyu.model.Func;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IFuncDao {

    @Select("SELECT * FROM func ORDER BY menu_id")
    List<Func> getAll();
}
