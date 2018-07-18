package com.chuang.service;

public interface ImageService {
    String getImageBase64(String xh);
    void insertImageBase64(String xh,String imagePath);
    String getImagePath(String xh);
}
