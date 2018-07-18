package com.chuang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/page")
public class PageController {

    @RequestMapping("/getCamera")
    public String getCamera(String xh, HttpServletRequest request){
        request.getSession().setAttribute("xh",xh);
        System.out.println("xh:" + xh);
        return "photo";
    }

    @RequestMapping("/getPage")
    public String getPage(){
        return "page";
    }

    @RequestMapping("/getXs")
    public String getXs(){
        return "zw";
    }

    @RequestMapping("/getError")
    public String getError(){
        return "error";
    }

    @RequestMapping("/loginOut")
    public String loginOut(HttpServletRequest request){
        String xh = (String) request.getSession().getAttribute("xh");
        request.getSession().removeAttribute(xh);
        return "redirect:http://localhost:8080";
    }

}
