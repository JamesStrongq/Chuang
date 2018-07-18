package com.chuang.controller;

import com.chuang.dao.ImageDao;
import com.chuang.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/image")
public class ImageController {

        @Autowired
        private ImageService imageService;

        @RequestMapping("/getBase64/{xh}")
        @ResponseBody
        public String getImageBase64(@PathVariable String xh){
            String str = imageService.getImageBase64(xh);
            return str;
        }

        @RequestMapping("/insertBase64/{xh}")
        @ResponseBody
        public String insertImageBase64(@PathVariable String xh){
            imageService.insertImageBase64(xh,"D:/图片/1.jpg");
            return "true";
        }
}
