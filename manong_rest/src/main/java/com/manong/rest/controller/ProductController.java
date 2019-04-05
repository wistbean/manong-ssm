package com.manong.rest.controller;

import com.manong.rest.service.ProductCategriesService;
import com.manong.rest.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.Res_Categories;
import pojo.ResponseJsonResult;

@Controller("ProductController")
@RequestMapping("/rest")
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping("product/list")
    @ResponseBody
    public ResponseJsonResult getProductList(){
        ResponseJsonResult responseJsonResult = productService.getProduct();
        return responseJsonResult;
    }

}
