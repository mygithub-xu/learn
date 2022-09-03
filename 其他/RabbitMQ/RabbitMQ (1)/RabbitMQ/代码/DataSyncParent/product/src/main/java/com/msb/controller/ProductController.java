package com.msb.controller;

import com.msb.bean.Product;
import com.msb.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * Created by 金喆
 */

@Controller
public class ProductController {


    @Autowired
    private ProductService productService ;


    @GetMapping("/")
    public String showAdd()
    {
        return "add";
    }


    @PostMapping("/add")
    public String add(Product product)
    {
        int index = productService.insertProduct(product);
        //省略判断
        return "add";
    }

}
