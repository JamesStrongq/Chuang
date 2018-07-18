package com.chuang.controller;

import com.chuang.utils.SendEmailUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lack")
public class LackPageController {

    @RequestMapping("/page")
    public void lackPage(){
        try {
            new SendEmailUtil().testSendEmail("");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
