package com.taotao.controller;

import com.alibaba.fastjson.JSONObject;
import com.taotao.dao.UserDao;
import com.taotao.entity.User;
import com.taotao.util.CookieUtil;
import com.taotao.util.MyJsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/register", asyncSupported = true)
public class UserRegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("register.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setHeader("Content-type", "text/html;charset=UTF-8");//告知浏览器编码方式;
        resp.setCharacterEncoding("UTF-8");
        //向前台的页面输出结果
        PrintWriter out = resp.getWriter();
        //之前没有登录过
        //获取请求的Json字符输入流并转换为Json
        JSONObject json = MyJsonUtil.getJson(req, resp);//自封装工具

        System.out.println(json);//打印一下
        //获取Cookie中的SessionId
        String sessionId = CookieUtil.getCookieValue(req, "sessionId");

        UserDao userDao = new UserDao();//jdbc
        int row = userDao.insertUserByUser(json);
        //是否有返回结果
        if (row == 1) {
            resp.sendRedirect("/login");
        } else {
            out.write("注册失败");
        }


        out.close();//返回数据后关闭输出流
    }
}
