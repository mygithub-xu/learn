package com.msb.bean;

import org.apache.solr.client.solrj.beans.Field;

import java.io.Serializable;

/**
 * Created by 金喆
 */
public class SearchPojo implements Serializable {

    public static final long serialVersionUID=1L;


    @Field
    private Integer id ;
    @Field
    private String name ;
    @Field
    private Double price;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "SearchPojo{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                '}';
    }
}
