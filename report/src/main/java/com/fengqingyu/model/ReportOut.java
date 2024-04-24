package com.fengqingyu.model;

import lombok.Data;

import java.sql.Date;

/*
 * 存放支出明细的报表
 * @author: Feng Qingyu
 * @date: 2024/4/24
 * @change Date:
 */
@Data
public class ReportOut {

    // dbid
    private int reportOutIn;

    // 消费日期
    private Date date;

    // 消费种类dbid
    private int categoryId;

    // 消费金额
    private double amount;

    // 备注
    private String detail;

    // 消费用户dbid
    private int userId;

    // 扣费账户dbid
    private int assetId;
}
