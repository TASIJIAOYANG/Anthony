package com.springboot.entity;

import java.math.BigDecimal;

/**
 * Created by Administrator on 2019/12/9.
 */
public class Person_Info {
    private Integer id;
    private Integer userid;
    private String name;
    private Float selfInput;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Float getSelfInput() {
        return selfInput;
    }

    public void setSelfInput(Float selfInput) {
        this.selfInput = selfInput;
    }

    public Person_Info(Integer userid, String name, String months, BigDecimal income, Integer id,Float selfInput) {
        this.userid = userid;
        this.name = name;
        this.id = id;
        this.selfInput = selfInput;
    }

    public Person_Info() {
    }
}
