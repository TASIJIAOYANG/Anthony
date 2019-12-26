package com.springboot.rabbit_mq;

import com.google.common.annotations.VisibleForTesting;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2019/12/10.
 */
// 消息的生产者
/*
@Component
public class Producter {
    @Autowired
    private AmqpTemplate amqpTemplate;

    // 发送消息
    public void sendMessage(String message){
        System.out.print("+++++++++++");
        // 像消费者发送Queue消息
        this.amqpTemplate.convertAndSend("helloQueue",message);

    }
}*/
