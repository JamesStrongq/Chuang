package com.chuang.service;


import com.chuang.pojo.Cj;
import com.chuang.pojo.Xs;

import java.util.List;

public interface QueryService {
    Xs queryXsByXh(String xh);
    List<Cj> queryCjByXh(String xh);
    double getJd(String xh);
}
