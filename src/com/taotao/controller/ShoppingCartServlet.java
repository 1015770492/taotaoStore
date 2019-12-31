package com.taotao.controller;

import com.alibaba.fastjson.JSONObject;
import com.taotao.dao.ShoppingCartDao;
import com.taotao.entity.Shoppingcart;
import com.taotao.util.CookieUtil;
import com.taotao.util.MyJsonUtil;
import com.taotao.util.MySessionUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/myShoppingCart")
public class ShoppingCartServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("shoppingCart.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String sessionId = CookieUtil.getCookieValue(req, "JSESSIONID");
        HttpSession session = MySessionUtil.getSession(sessionId);
        String userPhone= "";
//        JSONObject userPhone= MyJsonUtil.getJson(req,resp);
        if (session!=null){
            userPhone= (String) session.getAttribute("userPhone");

        }else {
            out.print("");
        }

        List<Shoppingcart> shoppingcartList = ShoppingCartDao.selectShoppingCartByUserPhone(userPhone);
        String list = JSONObject.toJSONString(shoppingcartList);
        System.out.println(list);
        out.print(list);

    }
}
