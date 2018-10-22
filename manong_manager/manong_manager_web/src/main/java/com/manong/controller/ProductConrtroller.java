package com.manong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wistbean on 2018/9/19.
 * 商品管理控制层
 */

@Controller
public class ProductConrtroller {

    @RequestMapping("product_list")
    public String listProduct(){
        return "product_list";
    }

}
