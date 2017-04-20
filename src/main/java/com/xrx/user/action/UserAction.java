package com.xrx.user.action;
import com.opensymphony.xwork2.ActionSupport;
import com.xrx.user.bean.User;
import com.xrx.user.service.UserService;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * Created by lucifel on 2017/4/17.
 */
public class UserAction extends ActionSupport {
    private User user;
    private Logger logger = Logger.getLogger(UserAction.class);

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String login(){
        String result = "success";
        UserService userService = new UserService();
        boolean flag = userService.checkUser(user);
        if (flag){
            HttpSession session = ServletActionContext.getRequest().getSession();
            session.setAttribute("user",user);
            kickOutUser(session,user.getUsername());
        }else{
            result = "login";
        }
        return result;
    }

    public String logout() {
        HttpSession session = ServletActionContext.getRequest().getSession();
        session.invalidate();
        return "success";
    }
    /*
     *   1.获取存放session引用的map,如果没有则创建，并存放该用户表示key,session为value
     *   2.如果存在则在map中查找该用户对应的session并销毁该session
     *   2.在用户名密码正确后，将用户名作为唯一标识key放到map,session的引用为value
     *
     */
    private void  kickOutUser(HttpSession session,String username){
        ServletContext application = ServletActionContext.getServletContext();
        Map<String,HttpSession> sessionMap = (Map)application.getAttribute("sessionMap");
        if(sessionMap != null){
            boolean flag = sessionMap.containsKey(username);
            if(flag){
                HttpSession session_temp = sessionMap.get(username);
                System.out.println("准备踢出已经登陆的用户:" + username);
                session_temp.invalidate();
            }
            System.out.println("往sessionMap中:" + (sessionMap.containsKey(username)?"更新":"添加") + "用户为" + username + "对应的session");
            sessionMap.put(username,session);
        }else{
            sessionMap = new HashMap<String,HttpSession>();
            sessionMap.put(username,session);
            application.setAttribute("sessionMap",sessionMap);
        }
    }

}
