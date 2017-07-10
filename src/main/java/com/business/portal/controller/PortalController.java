package com.business.portal.controller;

import com.business.base.controller.BaseController;
import com.business.base.utils.PageFinder;
import com.business.base.utils.Query;
import com.business.portal.model.HistoryToday;
import com.business.portal.service.IHistoryTodayService;
import com.business.ucenter.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Controller
@Scope("prototype")
@RequestMapping("portal")
public class PortalController extends BaseController{

    private static final Logger logger = LoggerFactory.getLogger(PortalController.class);

    @Resource(name="historyTodayService")
    IHistoryTodayService historyTodayService;

    @RequestMapping("portalIndex")
    public String loginSubmit(Model model) {
        Query query = new Query();
        query.setPage(1);
        query.setPageSize(5);
        HistoryToday historyToday = new HistoryToday();
        SimpleDateFormat df = new SimpleDateFormat("MMdd");//设置日期格式
        String day = df.format(new Date());
        historyToday.setDay(day);
        PageFinder<HistoryToday> pageFinder = historyTodayService.findPageFinderObjs(historyToday,query);
        model.addAttribute("pageFinder",pageFinder);

        return "portal/portalIndex";
    }

    public static void main(String[] args) {

    }
}
