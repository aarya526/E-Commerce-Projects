package org.rasindia.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScan({"org.rasindia.config"})
@PropertySource(value = {"classpath: config.properties"})
public class HibernateConfig {

}
