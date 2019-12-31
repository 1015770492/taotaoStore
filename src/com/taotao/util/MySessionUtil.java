package com.taotao.util;

import javax.servlet.http.HttpSession;

public class MySessionUtil {
    public static HttpSession getSession(String sessionId){
        MySessionContext myc= MySessionContext.getInstance();
        return myc.getSession(sessionId);
    }

}
