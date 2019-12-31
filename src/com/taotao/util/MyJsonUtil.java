package com.taotao.util;

import com.alibaba.fastjson.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class MyJsonUtil {
    public static JSONObject getJson(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        // 读取请求内容
        BufferedReader br = new BufferedReader(new InputStreamReader(req.getInputStream(),"utf-8"));
        String line = "";
        StringBuilder sb = new StringBuilder();
        while ((line = br.readLine()) != null) {
            sb.append(line);
        }
        System.out.println("进入login");
        //将json字符串转换为json对象
        JSONObject json = JSONObject.parseObject(sb.toString());
        return json;
    }
}
