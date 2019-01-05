package com.manong.service;


import pojo.EasyUITree;
import pojo.ResponseJsonResult;

import java.util.List;

/**
 * Created by wistbean on 2018/10/2.
 */
public interface ProductCategoryService {

    List<EasyUITree> findProductCategoryListByParentId(Short parentid);

    ResponseJsonResult addCategory(Short parentid, String name);

    ResponseJsonResult deleteCategory(Short parentid,Short id);



}
