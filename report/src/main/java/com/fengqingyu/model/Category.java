package com.fengqingyu.model;

import lombok.Data;

/*
 * 存放消费类型的分类表
 * @author: Feng Qingyu
 * @date: 2024/4/24
 * @change Date:
 */
@Data
public class Category {

    // dbid
    private int categoryId;

    // 分类名称
    private String categoryName;

    // 启用标志
    private String useFlag;

    // 所属用户ID
    private int userId;
}
