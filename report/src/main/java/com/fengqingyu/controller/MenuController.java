package com.fengqingyu.controller;

import com.fengqingyu.service.MenuService;
import com.fengqingyu.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MenuController {

    @Autowired
    private MenuService menuService;

    @RequestMapping("/getMenu")
    @ResponseBody
    public Result getMenu() {
        try {
            return menuService.getMenu();
        } catch (Exception e) {
            System.out.println(e);
            return Result.error();
        }
    }
}
