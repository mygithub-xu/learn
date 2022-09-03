package com.msb.service.impl;

import com.msb.bean.SearchPojo;
import com.msb.service.SearchService;
import org.apache.solr.client.solrj.response.UpdateResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.solr.core.SolrTemplate;
import org.springframework.stereotype.Service;

/**
 * Created by 金喆
 */

@Service
public class SearchServiceImpl implements SearchService{

    @Autowired
    private SolrTemplate solrTemplate;

    @Override
    public boolean insert(SearchPojo searchPojo) {

        UpdateResponse response = solrTemplate.saveBean("testcore", searchPojo);
        solrTemplate.commit("testcore");
        if(response.getStatus() == 0 )
        {
            return true ;
        }
        return false;
    }
}
