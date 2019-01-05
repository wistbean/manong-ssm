package com.manong.service.impl;

import com.manong.mapper.ProductMapper;
import com.manong.pojo.Product;
import com.manong.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.ResponseJsonResult;

/**
 * Created by wistbean on 2019/1/5.
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductMapper productMapper;

    @Override
    public ResponseJsonResult saveProduct(Product product) {

        product.setStatus((byte) 1);
        productMapper.insert(product);

        ResponseJsonResult responseJsonResult = new ResponseJsonResult();
        responseJsonResult.setStatus(200);

        return responseJsonResult;
    }
}
