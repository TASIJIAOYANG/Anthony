package com.springboot.controller;
import com.springboot.common.RedisUtils;
import com.springboot.common.bean.Redis;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Administrator on 2019/12/6.
 */
@RestController
@RequestMapping("/redis")
public class RedisController {

    @ApiOperation(value="通过Redis中的Key获取对应的Value值", notes="获取Redis的Value")
    @ApiImplicitParam(name = "key", value = "Redis的key值", paramType = "query", dataType = "String")
    @RequestMapping(value = "/get_Redis_Value", method = RequestMethod.GET)
    public String get_Redis_Value(@RequestParam(value = "key",required = true) String key){
        RedisUtils redisUtils = RedisUtils.newRedisUtils();
        String value_data = redisUtils.get(key);
        System.out.print(value_data);
        return "success";
    }

    @ApiOperation(value="Redis中添加Key/Value", notes="Redis中添加Key/Value")
    @ApiImplicitParam(name = "redis", value = "Redis实体对象", required = true, paramType = "body", dataType = "Redis")
    @RequestMapping(value = "/add_Redis_Key_Value", method = RequestMethod.POST)
    public String add_Redis_Key_Value(@RequestBody Redis redis){
        RedisUtils redisUtils = RedisUtils.newRedisUtils();
        String value_data = redisUtils.set(redis.getKey(),redis.getValue(),6000);
        return value_data;
    }

    @ApiOperation(value="Redis中删除对应的Key/Value", notes="Redis中删除对应的Key/Value")
    @RequestMapping(value = "/delete_Redis_Key_Value/{key}", method = RequestMethod.DELETE)
    public Long delete_Redis_Key_Value(@PathVariable(value = "key") String key){
        // 定义返回的Value值
        RedisUtils redisUtils = RedisUtils.newRedisUtils();
        Long value_data = redisUtils.del(key);
        return value_data;
    }


}
