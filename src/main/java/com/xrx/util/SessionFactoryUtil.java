package com.xrx.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;
import java.io.InputStream;

/**
 * Created by lucifel on 2017/4/17.
 */
public class SessionFactoryUtil {
    public static SqlSessionFactory sessionFactory;
    private static Logger logger = Logger.getLogger(SessionFactoryUtil.class);
    static {
        String resource = "config.xml";
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream(resource);
            sessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (Exception e) {
            logger.error(e);
            e.printStackTrace();
        }
    }
    public static SqlSession getSession(){
        return sessionFactory.openSession();
    }

}
