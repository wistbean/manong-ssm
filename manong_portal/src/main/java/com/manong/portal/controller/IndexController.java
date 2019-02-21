package com.manong.portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wistbean on 2019/1/24.
 */
@Controller
public class IndexController {

    @RequestMapping("/home.html")
    public String index(ModelMap modelMap){
        return "index";
    }


}
