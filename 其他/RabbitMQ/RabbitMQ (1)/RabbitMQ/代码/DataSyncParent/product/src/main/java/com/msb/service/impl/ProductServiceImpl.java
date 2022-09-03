package com.msb.service.impl;

import com.msb.bean.Product;
import com.msb.bean.SearchPojo;
import com.msb.component.Sender;
import com.msb.dubbo.service.ProductDubboService;
import com.msb.service.ProductService;
import org.apache.dubbo.config.annotation.Reference;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Random;

/**
 * Created by 金喆
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private Sender sender;

    @Reference
    private ProductDubboService productDubboService ;

    @Override
    public int insertProduct(Product product) {

        Random random = new Random();
        product.setId(random.nextInt(500000));

        //保存到数据库中
        int index = productDubboService.insertProduct(product);

        if(index == 1 )
        {
            //数据同步到solr中，调用insert方法
//            Map<String ,String > map = new HashMap<>();
//            map.put("id", product.getId()+"");
//            map.put("name", product.getName());
//            map.put("price", product.getPrice()+"");
//
//            String result = HttpClientUtil.doPost("http://localhost:8988/insert" , map);
//
//            boolean resultBool = Boolean.parseBoolean(result);
//            System.out.println("result: " + resultBool);
//
//            if(!resultBool){
//                //把数据库中的数据删除
//            }
            SearchPojo sp = new SearchPojo();
            BeanUtils.copyProperties(product ,sp);
            sender.send(sp);
        }
        return index;
    }

}
