package com.xrx.user.service;

import com.config.user.UserMapper;
import com.xrx.user.bean.User;
import com.xrx.util.SessionFactoryUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

/**
 * Created by lucifel on 2017/4/17.
 */
public class UserService {
    private Logger logger = Logger.getLogger(UserService.class);
    public boolean checkUser(User user){
        boolean result = false;
        SqlSession session = SessionFactoryUtil.getSession();
        UserMapper mapper = session.getMapper(UserMapper.class);
        try {
            int count = mapper.checkUser(user);
            session.commit();
            if (count > 0){
                result = true;
            }
        } catch (Exception e) {
            logger.error(e);
            e.printStackTrace();
        }
        return result;
    }
}
