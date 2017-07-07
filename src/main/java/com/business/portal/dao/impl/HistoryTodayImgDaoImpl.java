package com.business.portal.dao.impl;

import com.business.base.dao.impl.BaseDaoImpl;
import com.business.portal.dao.IHistoryTodayImgDao;
import com.business.portal.model.HistoryTodayImg;
import org.springframework.stereotype.Repository;

/**
 * Created by hushengmeng on 2017/7/4.
 */
@Repository(value="historyTodayImgDao")
public class HistoryTodayImgDaoImpl extends BaseDaoImpl<HistoryTodayImg> implements IHistoryTodayImgDao {
}
