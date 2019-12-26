package com.springboot.common.utils;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

/**
 * Created by Administrator on 2019/12/6.
 */
@Configuration
public class SwaggerUtils {
    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.springboot.controller"))//这里配置swagger扫描的规则，可以是包/类注解/方法注解
                .paths(PathSelectors.any())//筛选路径，可是any/正则表达式/antPattern
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("Spring-boot+Swagger管理项目文档")
                .description("实现简单优雅的restful风格")
                //.termsOfServiceUrl("")
                .contact(new Contact("WL","",""))
                .version("1.0")
                .build();
    }

}
