package com.business.ucenter.dao.impl;

import com.business.base.dao.impl.BaseDaoImpl;
import com.business.ucenter.dao.IUserDao;
import com.business.ucenter.model.User;
import org.springframework.stereotype.Repository;

/**
 * Created by hushengmeng on 2017/7/4.
 */
@Repository(value="userDao")
public class UserDaoImpl extends BaseDaoImpl<User> implements IUserDao{
}
