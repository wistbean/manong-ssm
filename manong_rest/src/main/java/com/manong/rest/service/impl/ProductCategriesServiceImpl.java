package com.manong.rest.service.impl;

import com.manong.mapper.ProductCategoryMapper;
import com.manong.pojo.ProductCategory;
import com.manong.pojo.ProductCategoryExample;
import com.manong.rest.service.ProductCategriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Res_Categories;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wistbean on 2019/2/24.
 */
@Service
public class ProductCategriesServiceImpl implements ProductCategriesService {

    @Autowired
    ProductCategoryMapper productCategoryMapper;

    @Override
    public Res_Categories getCategries() {

        Res_Categories res_categories = new Res_Categories();

        ProductCategoryExample productCategoryExample = new ProductCategoryExample();
        ProductCategoryExample.Criteria criteria = productCategoryExample.createCriteria();
        criteria.andParentIdEqualTo((short) 0);
        List<ProductCategory> productCategories = productCategoryMapper.selectByExample(productCategoryExample);

        List<Res_Categories.CategoriesBean> categories = new ArrayList<>();

        for (int i = 0; i <productCategories.size() ; i++) {

            Res_Categories.CategoriesBean categoriesBean = new Res_Categories.CategoriesBean();

            ProductCategory productCategory = productCategories.get(i);
            categoriesBean.setName(productCategory.getName());
            categoriesBean.setCat_id(productCategory.getId()+"");

            List<Res_Categories.CategoriesBean.SubCetegoriesBean> subCetegoriesBeenList = getSubCategroies
                    (productCategory.getId());

            categoriesBean.setSub_cetegories(subCetegoriesBeenList);
            categories.add(categoriesBean);
        }

        res_categories.setCategories(categories);

        return  res_categories;
    }

    private List<Res_Categories.CategoriesBean.SubCetegoriesBean> getSubCategroies(Short id) {

        List<Res_Categories.CategoriesBean.SubCetegoriesBean> list = new ArrayList<>();

        ProductCategoryExample productCategoryExample = new ProductCategoryExample();
        ProductCategoryExample.Criteria criteria = productCategoryExample.createCriteria();
        criteria.andParentIdEqualTo(id);
        List<ProductCategory> productCategories = productCategoryMapper.selectByExample(productCategoryExample);

        for (int i = 0; i <productCategories.size() ; i++) {
            Res_Categories.CategoriesBean.SubCetegoriesBean subCetegoriesBean = new Res_Categories.CategoriesBean
                    .SubCetegoriesBean();

            ProductCategory productCategory = productCategories.get(i);
            subCetegoriesBean.setCat_id(productCategory.getId()+"");
            subCetegoriesBean.setName(productCategory.getName());

            list.add(subCetegoriesBean);
        }

        return list;
    }
}
