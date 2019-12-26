package com.springboot.service;

import com.springboot.dao.PersonInfoDao;
import com.springboot.entity.Person_Info;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2019/12/26.
 */
@Service
public class PersonService implements PersonInfoDao{

    @Autowired
    private PersonInfoDao personInfoDao;

    @Override
    public List<Person_Info> getPersonInfoList() {
        return personInfoDao.getPersonInfoList();
    }

    @Override
    public void insert(Person_Info person_info) {
        personInfoDao.insert(person_info);
    }

    @Override
    public void update(Person_Info person_info) {
        personInfoDao.update(person_info);
    }

    @Override
    public void delete(Person_Info person_info) {
        personInfoDao.delete(person_info);
    }


}
