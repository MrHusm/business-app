package com.business.portal.service.impl;

import com.business.base.dao.IBaseDao;
import com.business.base.service.impl.BaseServiceImpl;
import com.business.portal.dao.IHistoryTodayDao;
import com.business.portal.model.HistoryToday;
import com.business.portal.service.IHistoryTodayService;
import com.business.ucenter.dao.IUserDao;
import com.business.ucenter.model.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by hushengmeng on 2017/7/4.
 */
@Service(value="historyTodayService")
public class HistoryTodayServiceImpl extends BaseServiceImpl<HistoryToday, Long> implements IHistoryTodayService {

    @Resource(name="historyTodayDao")
    private IHistoryTodayDao historyTodayDao;

    @Override
    public IBaseDao<HistoryToday> getBaseDao() {
        return historyTodayDao;
    }
}
