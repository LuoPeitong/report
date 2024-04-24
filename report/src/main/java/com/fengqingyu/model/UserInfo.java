package com.fengqingyu.model;

import lombok.Data;

/*
 * 存放用户信息的表
 * @author: Feng Qingyu
 * @date: 2024/4/24
 * @change Date:
 */
@Data
public class UserInfo {

    // dbid
    private int userId;

    // 昵称
    private String name;
}
