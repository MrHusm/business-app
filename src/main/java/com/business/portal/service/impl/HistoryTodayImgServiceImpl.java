package com.business.portal.service.impl;

import com.business.base.dao.IBaseDao;
import com.business.base.service.impl.BaseServiceImpl;
import com.business.portal.dao.IHistoryTodayImgDao;
import com.business.portal.model.HistoryTodayImg;
import com.business.portal.service.IHistoryTodayImgService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by hushengmeng on 2017/7/4.
 */
@Service(value="historyTodayImgService")
public class HistoryTodayImgServiceImpl extends BaseServiceImpl<HistoryTodayImg, Long> implements IHistoryTodayImgService {

    @Resource(name="historyTodayImgDao")
    private IHistoryTodayImgDao historyTodayImgDao;

    @Override
    public IBaseDao<HistoryTodayImg> getBaseDao() {
        return historyTodayImgDao;
    }
}
