package com.msb.service.impl;

import com.msb.bean.Product;
import com.msb.dubbo.service.ProductDubboService;
import com.msb.mapper.ProductMapper;
import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by 金喆
 */

@Service
public class ProductDubboServiceImpl implements ProductDubboService{

    @Autowired
    private ProductMapper productMapper;

    @Override
    public int insertProduct(Product product) {
        return productMapper.insertProduct(product);
    }
}
