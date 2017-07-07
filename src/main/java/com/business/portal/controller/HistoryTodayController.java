package com.business.portal.controller;

import com.business.base.controller.BaseController;
import com.business.portal.service.IHistoryTodayImgService;
import com.business.portal.service.IHistoryTodayService;
import com.business.ucenter.controller.UserController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;

/**
 * @author hushengmeng
 * @date 2017/7/7.
 */
@Controller
@Scope("prototype")
@RequestMapping("historyToday")
public class HistoryTodayController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Resource(name="historyTodayService")
    IHistoryTodayService historyTodayService;

    @Resource(name="historyTodayImgService")
    IHistoryTodayImgService historyTodayImgService;

    @RequestMapping("climbData")
    public static void climbData() {
        String baseUrl = "http://www.people.com.cn/GB/historic/";
        for(int i = 1; i < 2; i++){
            for(int j = 1; j < 2; j++){
                String day = "";
                if(i < 10){
                    day += "0"+i;
                }else{
                    day += i;
                }
                if(j < 10){
                    day += "0"+j;
                }else{
                    day += j;
                }

                URL url  = null;
                try {
                    url = new URL(baseUrl + day);
                    InputStream is = url.openStream();
                    BufferedReader reader = new BufferedReader(new InputStreamReader(is));
                    String content = "";
                    String line = "";
                    while((line = reader.readLine())  !=null){
                        content += line;
                    }
                    content = content.substring(content.indexOf("<td class=\"t14l14\">")+19);
                    content = content.substring(0,content.indexOf("</td>"));
                    System.out.println(content);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void main(String[] args) {
        climbData();
    }
}
