package com.chuang.controller;

import com.chuang.service.judImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
@RequestMapping("/camera")
public class CameraController {

    @Autowired
    private judImageService imageService;

    @RequestMapping(value = "/getImage",method = RequestMethod.POST)
    @ResponseBody
    public String getCamera(String snapData, HttpServletRequest request){
        //System.out.println(snapData);
        String base1 = snapData.substring(23);
        //System.out.println(base1);
        String xh = (String) request.getSession().getAttribute("xh");
        System.out.println("学号:" + xh);
        boolean str = imageService.judgeImage(xh,base1);
        System.out.println(str);

        if (!str){
            return "{\"code\":500}";
        }
        return "{\"code\":200}";
    }

}
