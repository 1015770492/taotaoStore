package com.taotao.dao;

import com.alibaba.fastjson.JSONObject;
import com.taotao.entity.User;
import com.taotao.util.BaseDBUtil;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class UserDao {

    /**
     * 登录用户查询
     * @param userPhone
     * @param password
     * @return
     */
    public List<User> selectUserStatusByUser(String userPhone,String password){
        String status="";
        String sql="select * from user where userPhone=? and password=?";
        return (List<User>) BaseDBUtil.select(sql, User.class, userPhone, password);
    }

    public List<User> selectUserPhone(String userPhone){
        String status="";
        String sql="select isDelete from user where userPhone=? and isDelete = 0";//账号可登陆
        return (List<User>) BaseDBUtil.select(sql, User.class, userPhone);
    }


    public int insertUserByUser(JSONObject json){
        String sql="insert into user( registerDate, userPhone, password, userName, region) values(?,?,?,?,?)";
        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String date2 = format.format(date);
        return BaseDBUtil.execUpdate(sql,date2,json.getString("userPhone"),json.getString("userPhone"),
                json.getString("password"),json.getString("userName"),json.getString("region"));
    }

}
