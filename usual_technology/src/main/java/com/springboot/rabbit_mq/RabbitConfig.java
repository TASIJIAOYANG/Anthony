package com.springboot.rabbit_mq;

import com.sun.org.apache.bcel.internal.generic.NEW;
import org.springframework.amqp.core.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


/**
 * Created by Administrator on 2019/12/10.
 */
//@Configuration
//public class RabbitConfig {
//
//    //消息队列的名称
//    final static String QUEUE_NAME = "helloQueue";
//    //交换机名称
//    final static String EXCHANGE_NAME = "helloExchange";
//
//    // 配置队列信息
//    @Bean
//    public Queue queue(){
//        // 参数1：消息队列名称；参数2：是否持久化
//        return new Queue(RabbitConfig.QUEUE_NAME,false);
//    }
//
//    // 配置交换机
//    @Bean
//    public DirectExchange directExchange(){
//        // 参数1：交换机名称；参数2：是否持久化；参数3：是否自动删除消息
//        return new DirectExchange(RabbitConfig.EXCHANGE_NAME,false,false);
//    }
//
//    // 在交换机上绑定一个消息队列
//    @Bean
//    public Binding bindingExchangeAndQueue(Queue queue, DirectExchange directExchange){
//        // 在交换机[helloExchange]上绑定一个消息队列[helloQueue]
//        return BindingBuilder.bind(queue).to(directExchange).with(RabbitConfig.QUEUE_NAME);
//    }
//}
