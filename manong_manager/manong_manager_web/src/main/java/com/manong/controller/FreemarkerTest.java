package com.manong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wistbean on 2018/12/12.
 */
@Controller
public class FreemarkerTest {

    @RequestMapping("/hello")
    public String sayHello(Model model){

        model.addAttribute("name","wistbean");
        return "hello";

    }

    @RequestMapping("/hi")
    public String sayHi(Model model){

        model.addAttribute("name","wistbean");
        return "hi";

    }
}
