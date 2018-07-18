package com.chuang.service.impl;

import com.chuang.dao.ImageDao;
import com.chuang.service.ImageService;
import com.chuang.utils.ImageToBase64Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ImageServiceImpl implements ImageService {

    @Autowired
    private ImageDao imageDao;

    @Override
    public String getImageBase64(String xh) {
        String imagePath = imageDao.getImage(xh);
        String base64 = ImageToBase64Util.GetImageStr(imagePath);
        return base64;
    }

    @Override
    public void insertImageBase64(String xh, String imagePath) {
        imageDao.insertImage(xh,imagePath);
    }

    @Override
    public String getImagePath(String xh) {
        String imagePath = imageDao.getImage(xh);
        return imagePath;
    }
}
