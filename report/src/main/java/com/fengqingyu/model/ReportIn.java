package com.fengqingyu.model;

import lombok.Data;
import java.sql.Date;
/*
 * 存放收入明细的报表
 * @author: Feng Qingyu
 * @date: 2024/4/24
 * @change Date:
 */
@Data
public class ReportIn {

    // dbid
    private int reportInId;

    // 消费日期
    private Date date;

    // 消费种类dbid
    private int categoryId;

    // 消费金额
    private double amount;

    // 备注
    private String detail;

    // 消费人dbid
    private int userId;

    // 扣费账户dbid
    private int assetIdOut;

    // 进账账户dbid
    private int assetIdIn;

}
