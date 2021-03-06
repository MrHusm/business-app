package com.business.portal.dao.impl;

import com.business.base.dao.impl.BaseDaoImpl;
import com.business.portal.dao.IHistoryTodayDao;
import com.business.portal.model.HistoryToday;
import org.springframework.stereotype.Repository;

/**
 * Created by hushengmeng on 2017/7/4.
 */
@Repository(value="historyTodayDao")
public class HistoryTodayDaoImpl extends BaseDaoImpl<HistoryToday> implements IHistoryTodayDao {
}
