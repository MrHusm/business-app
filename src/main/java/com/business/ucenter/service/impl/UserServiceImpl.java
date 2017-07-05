package com.business.ucenter.service.impl;

import com.business.ucenter.dao.IBaseDao;
import com.business.ucenter.dao.IUserDao;
import com.business.ucenter.model.User;
import com.business.ucenter.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by hushengmeng on 2017/7/4.
 */
@Service(value="userService")
public class UserServiceImpl extends BaseServiceImpl<User, Long>  implements IUserService {

    @Resource(name="userDao")
    private IUserDao userDao;

    @Override
    public IBaseDao<User> getBaseDao() {
        return userDao;
    }
}
