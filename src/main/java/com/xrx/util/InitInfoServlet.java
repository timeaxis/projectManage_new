package com.xrx.util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by lucifel on 2017/2/9.
 */
public class InitInfoServlet extends HttpServlet {
    public void init() throws ServletException {
        System.out.println("初始化配合开始...");

        System.out.println("初始化配合完毕...");
        super.init();
    }
}
