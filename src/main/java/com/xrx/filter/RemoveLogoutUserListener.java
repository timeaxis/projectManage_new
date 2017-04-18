package com.xrx.filter;

import com.xrx.user.bean.User;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.Map;

/**
 * Created by lucifel on 2017/3/30.
 */
public class RemoveLogoutUserListener implements HttpSessionListener {
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
    }

    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        HttpSession session = httpSessionEvent.getSession();
        User user = (User) session.getAttribute("user");
        String username = user.getUsername();
        System.out.println("用户：" + username + "对应的session销毁，sessionId=" + session.getId());
        ServletContext application = session.getServletContext();
        Map<String,HttpSession> sessionMap = (Map)application.getAttribute("sessionMap");
        if(sessionMap != null){
            System.out.println("将用户：" + username + "从 sessionMap中移除掉");
            sessionMap.remove(username);
        }
    }
}
