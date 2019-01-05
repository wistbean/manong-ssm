package com.manong.controller;

import com.manong.pojo.Product;
import com.manong.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.ResponseJsonResult;

/**
 * Created by wistbean on 2018/9/19.
 * 商品管理控制层
 */

@Controller
public class ProductConrtroller {

    @Autowired
    ProductService productService;

    @RequestMapping("product_list")
    public String listProduct(){
        return "product_list";
    }

    @RequestMapping("product_save")
    @ResponseBody
    public ResponseJsonResult saveProduct(Product product){
        ResponseJsonResult responseJsonResult = productService.saveProduct(product);
        return responseJsonResult;
    }

}
