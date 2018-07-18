package com.chuang.controller;

import com.chuang.pojo.Cj;
import com.chuang.pojo.Xs;
import com.chuang.service.ImageService;
import com.chuang.service.QueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("/query")
public class QueryController {

    @Autowired
    private QueryService queryService;

    @Autowired
    private ImageService imageService;


    @RequestMapping("/Xs")
    public String queryXs(Model model, HttpServletRequest request){
        String xh = (String) request.getSession().getAttribute("xh");
        Xs xs = queryService.queryXsByXh(xh);
        List<Cj> list = queryService.queryCjByXh(xh);
        Iterator iterator = list.iterator();
        while(iterator.hasNext()){
            System.out.println(iterator.next());
        }
        double jd = queryService.getJd(xh);
        System.out.println(xs);
        model.addAttribute("xh",xh);
        model.addAttribute("xs",xs);
        model.addAttribute("cj",list);
        model.addAttribute("jd",jd);
        return "xs";
    }

    @RequestMapping("/getPage")
    public String getMPage(HttpServletRequest request,Model model){
        String xh = (String) request.getSession().getAttribute("xh");
        Xs xs = queryService.queryXsByXh(xh);
        String imgPath = imageService.getImagePath(xh);
        //model.addAttribute("xsName",xs.getMz());
        model.addAttribute("imagePath",imgPath);
        model.addAttribute("xh",xh);

        return "page";
    }

}
