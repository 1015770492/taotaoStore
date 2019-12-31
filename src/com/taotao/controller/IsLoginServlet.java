package com.taotao.controller;

import com.taotao.util.CookieUtil;
import com.taotao.util.MySessionUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/isLogin",asyncSupported = true)
public class IsLoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取Cookie中的SessionId
        String sessionId = CookieUtil.getCookieValue(req, "sessionId");
        if (sessionId == null) {
            resp.sendRedirect("/login");
        } else {
            //已有sessionId判断Session是否还有效
            HttpSession session = MySessionUtil.getSession(sessionId);
            if (session == null) {//空则重新登录
                resp.sendRedirect("/login");
            } else {
                //不为空获取userPhone
                //Session中存用户名。表示登录进去了
                String userPhone = (String) session.getAttribute("userPhone");
                resp.getWriter().println(userPhone);//返回用户的手机号
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
