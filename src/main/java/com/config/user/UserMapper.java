package com.config.user;

import com.xrx.user.bean.User;

/**
 * Created by lucifel on 2017/4/17.
 */
public interface UserMapper {
    public int checkUser(User user) throws Exception;
}
