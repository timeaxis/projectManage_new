package com.xrx.filter;

import com.xrx.user.bean.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by lucifel on 2017/2/8.
 */
public class SessionFilter implements javax.servlet.Filter {
    public void destroy() {
    }

    public void doFilter(javax.servlet.ServletRequest req, javax.servlet.ServletResponse resp, javax.servlet.FilterChain chain) throws javax.servlet.ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)resp;
        String path = request.getServletPath();
        //除请求checkRequest.do外,其它请求均检测session以确保已通过了4A票据验证
        if("login.action".equals(path.substring(1))){
            chain.doFilter(request,response);
        }else{
            HttpSession session = request.getSession();
            Object obj = session.getAttribute("user");
            if(obj != null && (obj instanceof User)){
                //已验证通过
                chain.doFilter(request,response);
            }else{
                //没通过验证
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(req,resp);
            }
        }
    }

    public void init(javax.servlet.FilterConfig config) throws javax.servlet.ServletException {

    }

}
