package com.taotao.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtil {

    /**
     * 读取cookie
     *
     * @param req
     * @param
     */
    public static void showCookies(HttpServletRequest req) {
        //获得所有cookie数据
        Cookie[] cookies = req.getCookies();
        if (null == cookies) {
            System.out.println("没有cookie");
        } else {
            for (Cookie cookie : cookies) {
                if (cookie == null) {
                    System.out.println("cookie值空");
                } else {
                    System.out.println("cookie name:" + cookie.getName() + ",cookie value:" + cookie.getValue());
                }
            }
        }
    }

    /**
     * 根据指定获得cookie值
     *
     * @param req
     */
    public static String getCookieValue(HttpServletRequest req, String name) {
        String value = null;
        //首先从cookie中取存储的值
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie != null && name.equals(cookie.getName())) {
                    value = cookie.getValue();
                    break;
                }

            }
        }

        return value;
    }


    /**
     * 添加cookie
     * 注意若添加的cookie包含中文则必须设置编码，读取也必须设置编码
     *
     * @param req
     * @param resp
     */
    public static void addCookie(HttpServletRequest req, HttpServletResponse resp, String name, String value) {

        Cookie cookie = new Cookie(name, value);
        cookie.setPath("/");
        cookie.setMaxAge( 15 * 60);//15分钟
        resp.addCookie(cookie);

    }

    /**
     * 根据指定名称修改cookie
     * 注意一、修改、删除Cookie时，新建的Cookie除value、maxAge之外的所有属性，例如name、path、domain等，都要与原Cookie完全一样。
     * 否则，浏览器将视为两个不同的Cookie不予覆盖，导致修改、删除失败。
     *
     * @param request
     * @param response
     * @param name
     * @param value
     */
    public static void editCookie(HttpServletRequest request, HttpServletResponse response, String name, String value) {
        Cookie[] cookies = request.getCookies();
        if (null == cookies) {
            System.out.println("没有cookie");
        } else {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(name)) {
                    System.out.println("原值为:" + cookie.getValue());
                    cookie.setValue(value);
                    cookie.setPath("/");
                    cookie.setMaxAge(15 * 60);//15分钟
                    System.out.println("被修改的cookie名字为:" + cookie.getName() + ",新值为:" + cookie.getValue());
                    response.addCookie(cookie);
                    break;
                }
            }
        }
    }

    /**
     * 根据指定名称删除cookie
     *
     * @param request
     * @param response
     * @param name
     */
    public void delCookie(HttpServletRequest request, HttpServletResponse response, String name) {
        Cookie[] cookies = request.getCookies();
        if (null == cookies) {
            System.out.println("没有cookie");
        } else {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(name)) {
                    //设置值为null
                    cookie.setValue(null);
                    //立即销毁cookie
                    cookie.setMaxAge(0);
                    cookie.setPath("/");
                    System.out.println("被删除的cookie名字为:" + cookie.getName());
                    response.addCookie(cookie);
                    break;
                }
            }
        }
    }
}

