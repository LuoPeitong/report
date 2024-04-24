package com.fengqingyu.model;

import lombok.Data;

/*
 * 存放用户资产的表
 * @author: Feng Qingyu
 * @date: 2024/4/24
 * @change Date:
 */
@Data
public class UserAssets {

    // dbid
    private int assetId;

    // 所属人id
    private int userId;

    // 资产类型(名称)
    private String typeName;

    // 账户余额
    private double balance;

}
