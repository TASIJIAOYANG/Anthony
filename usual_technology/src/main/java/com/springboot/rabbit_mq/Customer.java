package com.springboot.rabbit_mq;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2019/12/10.
 */
// 消息的消费者
//@Component
//// 监听[helloQueue]这个队列中的消息
//@RabbitListener(queues = "helloQueue")
//public class Customer {
//
//    // @RabbitHandler 注解的作用主要是在@RabbitListener监听到了消息，@RabbitHandler去处理消息，两者配合使用
//    @RabbitHandler
//    public void receive_message(String message){
//        System.out.print("消费者开始消费信息，具体信息如下："+ message);
//    }
//
//}
