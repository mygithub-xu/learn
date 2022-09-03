package com.msb.config;

import org.apache.solr.client.solrj.SolrClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.solr.core.SolrTemplate;

/**
 * Created by 金喆
 */

@Configuration
public class SolrConfig {

    @Autowired
    SolrClient solrClient ;

    @Bean
    public SolrTemplate getSolrTemplate()
    {
        return new SolrTemplate(solrClient);
    }
}
