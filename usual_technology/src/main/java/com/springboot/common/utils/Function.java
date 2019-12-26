package com.springboot.common.utils;

/**
 * 参数接口定义
 * 
 * */
public interface Function<T,E> {

	public T callback(E e);
}
