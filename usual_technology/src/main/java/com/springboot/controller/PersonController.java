package com.springboot.controller;

import com.springboot.entity.Person_Info;
import com.springboot.service.PersonService;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2019/12/26.
 */
@Controller
@RequestMapping(value = "/person")
public class PersonController{

    @Autowired
    private PersonService personService;

    /**
     * 获取列表信息
     * @return
     */
    @RequestMapping(value = "/getPersonList", method = RequestMethod.GET)
    public List<Person_Info> getPersonList(){
        List<Person_Info> personInfoList = new ArrayList<>();
        personInfoList = personService.getPersonInfoList();

        for (int i = 0; i <personInfoList.size() ; i++) {
            System.out.print(personInfoList.get(i).getName());
        }
        return personInfoList;
    }

    /**
     * 执行插入
     */
    @RequestMapping("/insertPersonInfo")
    public void insertPersonInfo(){
        Person_Info person_info = new Person_Info();
        person_info.setName("张三");
        person_info.setSelfInput(Float.valueOf("10.5"));
        person_info.setUserid(1);
        personService.insert(person_info);
    }

    /**
     * 更新个人信息
     */
    @RequestMapping("/updatePersonInfo")
    public void updatePersonInfo(){
        Person_Info person_info = new Person_Info();
        person_info.setName("Apple");
        person_info.setId(3);
        personService.update(person_info);
    }

    /**
     * 删除个人信息
     */
    @RequestMapping("/deletePersonInfo")
    public void deletePersonInfo(){
        Person_Info person_info = new Person_Info();
        person_info.setId(14);
        personService.delete(person_info);
    }

}
