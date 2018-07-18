package com.chuang.service.impl;

import com.chuang.dao.ImageDao;
import com.chuang.service.judImageService;
import com.chuang.utils.HttpClientUtil;
import com.chuang.utils.ImageToBase64Util;
import com.chuang.utils.JsonUtils;
import com.chuang.utils.StrReplace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class judImageServiceImpl implements judImageService {

    @Autowired
    private ImageDao imageDao;

    @Override
    public boolean judgeImage(String xh,String base1) {
        String imagePath = imageDao.getImage(xh);
        String base2 = ImageToBase64Util.GetImageStr(imagePath);


        String newBase2 = StrReplace.strReplace(base2);
        //String newBase2 = base2.replace('r',' ');
        //System.out.println(newBase2);
        //System.out.println(base2);
       // System.out.println("{\"img1\": \"" + base1 + "\",\"img2\": \"" + base2 + "\"}");
        /*
        StringBuffer sb = new StringBuffer();
        sb.append("{");
        sb.append("\"img1\"");
        sb.append(":");
        sb.append("\"");
        sb.append(base1);
        sb.append("\"");
        sb.append(",");
        sb.append("\"img2\"");
        sb.append(":");
        sb.append("\"");
        sb.append(base2);
        sb.append("\"");
        sb.append("}");
        System.out.println(sb.toString());
        */
        String jsonResult = JsonUtils.objectToJson(new JsonResult(base1,newBase2));
        String str = HttpClientUtil.doPostJson("http://127.0.0.1:5000/isSame",
                jsonResult);
        if(str.equals("true")){
            return true;
        }
        return false;
    }
}
