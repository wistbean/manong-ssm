package com.manong.rest.controller;

import com.manong.rest.service.ProductCategriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.Res_Categories;

/**
 * Created by wistbean on 2019/2/24.
 */
@Controller
@RequestMapping("/rest")
public class ProductCategoriesController {

    @Autowired
    private ProductCategriesService productCategriesService;

    @RequestMapping("productCategries/list")
    @ResponseBody
    public Res_Categories getCategories(){
        Res_Categories categries = productCategriesService.getCategries();
        return categries;
    }

}
