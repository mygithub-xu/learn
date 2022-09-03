package com.msb.controller;

import com.msb.bean.SearchPojo;
import com.msb.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by 金喆
 */

@Controller
public class SearchController {

    @Autowired
    private SearchService searchService ;

    @RequestMapping("/insert")
    @ResponseBody
    public boolean search(SearchPojo searchPojo)
    {
        return searchService.insert(searchPojo);
    }

}
