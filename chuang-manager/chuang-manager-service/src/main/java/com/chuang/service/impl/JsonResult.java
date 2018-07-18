package com.chuang.service.impl;

public class JsonResult {
    private String img1;
    private String img2;

    public JsonResult(){

    }

    public JsonResult(String img1, String img2) {
        this.img1 = img1;
        this.img2 = img2;
    }

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }
}
