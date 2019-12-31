package com.taotao.controller;

import com.alibaba.fastjson.JSONObject;
import com.taotao.dao.UserDao;
import com.taotao.entity.LoginConstants;
import com.taotao.entity.User;
import com.taotao.util.CookieUtil;
import com.taotao.util.MyJsonUtil;
import com.taotao.util.MySessionUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/login", asyncSupported = true)
public class UserLoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
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
        String sessionId = CookieUtil.getCookieValue(req, "JSESSIONID");


        UserDao userDao = new UserDao();//jdbc
        List<User> userList = userDao.selectUserStatusByUser(json.getString("userPhone"), json.getString("password"));
        //是否有返回结果
        if (userList.size() == 1) {
            //再判断是否注销过
            if (userList.get(0).getIsDelete().equals("0")) {
                /**
                 * 说明用户名和密码正确，登录进来了，要创建会话，
                 * 第二次登录直接通过cookie的sessionid得到（cookie会每15分钟删除。就得重新登录）
                 */
                //创建Session回话
                HttpSession session = req.getSession();
                sessionId = session.getId();//获取sessionId
                //1、Session中存用户名。表示登录进去了
                session.setAttribute("userPhone", json.getString("userPhone"));

                /**
                 * sessionId存入cookie中，有效期15分钟
                 */
                //2、sessionId写入客户端表示登录过了
                CookieUtil.addCookie(req, resp, "JSESSIONID", sessionId);

                out.print("success");//通知前端登录成功
            } else {
                out.write("账号已销毁无法登录");
            }
        } else {
            out.write("手机号或者密码错误");
        }


        out.close();//返回数据后关闭输出流
    }
}
