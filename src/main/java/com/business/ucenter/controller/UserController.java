package com.business.ucenter.controller;

import com.business.base.controller.BaseController;
import com.business.ucenter.model.User;
import com.business.ucenter.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @author hushengmeng
 * @date 2017/7/4.
 */
@Controller
@Scope("prototype")
@RequestMapping("login")
public class UserController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Resource(name="userService")
    IUserService userService;

    @RequestMapping("index")
    public String loginSubmit(Model model, User user, String captcha) {
        User u = userService.findMasterById(1L);
        return "main";
    }
}
