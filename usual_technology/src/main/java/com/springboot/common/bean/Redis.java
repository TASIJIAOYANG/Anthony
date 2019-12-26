package com.springboot.common.bean;

/**
 * Created by Administrator on 2019/12/6.
 */
public class Redis {

    private String key;

    private String value;

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Redis(String key, String value) {
        this.key = key;
        this.value = value;
    }

    public Redis() {
    }
}
