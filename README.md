# 记账APP 

## 更新日志

---

### 2024/4/13

一直说要做一个自己用的记账APP，一直拖着没开始动手。即使数据库设计完很久了，也没开始动一行代码。也许确实是因为过于完美主义了，才让自己迟迟不敢动手，但今天我决定打破这个局面，不管怎样先动手再说，哪怕做出来一个特别烂的产品，我也要慢慢去优化它，直到自己满意。

今天的添砖加瓦如下

#### 数据库设计

用户信息表user_info

* user_id (主键)
* name (昵称)



资产表user_assets

- asset_id (主键)
- user_id (外键，连接至用户信息表)
- type_name (资产类型，例如支付宝、微信、银行卡)
- balance (余额)



分类表category

- category_id (主键)
- category_name (分类名称)
- use_flag（是否使用）
- user_id（公有：默认显示、私有）



账单支出表report_out

- report_out_id (主键)
- date (日期)
- category_id（分类） (外键，连接至分类表)
- amount (金额)
- detail (备注)
- user_id
- asset_id（扣费账户）



账单收入表report_in

   - report_in_id (主键)
   - date (日期)
   - category_id（分类） (外键，连接至分类表)(预留，暂不启用)
   - amount (金额)
   - detail (备注)
   - user_id
   - asset_id_out（扣费账户）（可为空）
   - asset_id_in 进账账户id

---

### 2024/4/14

emmm，进度果然非常滴缓慢，但是不着急，每天一小步，也是在前进的路上。

今天把数据库建好了，然后把前后端也搭一下，依然用的Spring+SpringMVC+Mybatis，前端用的是Vue，其他的后面有什么需求再加吧。

目前计划的是用SSM的后端，管理端用Vue吧，使用端想做在手机上，先用uniapp做一个h5的吧，方便部署，后续看看改成App还是小程序。

#### *记录一下*

1. Vue项目中配置后端接口路径：./config/index.js
2. Vue配置页面路由：./src/router/index.js

---

### 2024/4/24

好久没上号了，又去当废物了。。。

给自己立了个flag，每周至少要4天在此项目上花时间，不管多少吧，总是在推进的。。。

今天把entity写了一下，接下来该考虑考虑先写管理端还是先写用户端了。

考虑到尽早上线使用的话，可能选择先用uniapp开发出h5版本，能用再说。

---

### 2024/4/28

使用excel更新完最近的账单后，又把excel中的数据存储到数据库中，也算是做备份，也算是留作测试数据。