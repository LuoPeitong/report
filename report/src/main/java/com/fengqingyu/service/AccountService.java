package com.fengqingyu.service;

import com.fengqingyu.model.Account;

import java.util.List;

public interface AccountService {

    List<Account> findAll();

    void saveAccount(Account account);
}
