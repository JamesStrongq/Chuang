package com.chuang.service.impl;



import com.chuang.dao.DBDao;
import com.chuang.pojo.Cj;
import com.chuang.pojo.Xs;
import com.chuang.service.QueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class QueryServiceImpl implements QueryService {

    @Autowired
    private DBDao dbDao;

    @Override
    public Xs queryXsByXh(String xh) {
        Xs xs = null;
        try{
            xs = dbDao.xs(xh);
            return xs;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Cj> queryCjByXh(String xh) {
        List<Cj> list = new ArrayList<>();
        try{
            list = dbDao.cjb(xh);
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public double getJd(String xh) {
        double jd = 0;
        try{
            jd = dbDao.getJD(xh);
        }catch (Exception e){
            e.printStackTrace();
        }
        return jd;
    }
}
