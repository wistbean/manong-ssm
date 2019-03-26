package com.manong.service;

import com.manong.pojo.Product;
import pojo.EasyGrid;
import pojo.ResponseJsonResult;

/**
 * Created by wistbean on 2019/1/5.
 */
public interface ProductService {
    ResponseJsonResult saveProduct(Product product);
    EasyGrid listProduct(int pages,int rows);
}
