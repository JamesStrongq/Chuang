package com.chuang.Test;

import com.chuang.utils.ImageToBase64Util;

public class Test1{
    public static void main(String[] args){
        String str = ImageToBase64Util.GetImageStr("D:/图片/1.jpg");
        System.out.println(str);
        System.out.println(str.replace("\r\n",""));
    }
}