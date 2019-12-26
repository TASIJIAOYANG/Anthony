package com.springboot.dao;

import com.springboot.entity.Person_Info;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2019/12/9.
 */
@Repository
public interface PersonInfoDao{

    List<Person_Info>  getPersonInfoList();

    void insert(Person_Info person_info);

    void update(Person_Info person_info);

    void delete(Person_Info person_info);
}
