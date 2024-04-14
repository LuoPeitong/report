package com.fengqingyu.vo;

import com.fengqingyu.model.Func;
import lombok.Data;

import java.util.List;

@Data
public class MenuList {

    private String id;
    private String title;
    private String img;
    private List<Func> funcList;
}
