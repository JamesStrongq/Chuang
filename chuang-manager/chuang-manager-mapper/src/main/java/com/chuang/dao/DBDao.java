package com.chuang.dao;


import com.chuang.dbc.sqlhelp;
import com.chuang.pojo.Cj;
import com.chuang.pojo.Xs;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class DBDao {
    private List<Xs> xslist;
    private Xs Xs;
    private List<Cj> cjlist;

    public List<Cj> getCjlist() {
        return cjlist;
    }

    public void setCjlist(List<Cj> cjlist) {
        this.cjlist = cjlist;
    }

    public Xs getXs() {
        return Xs;
    }

    public void setXs(Xs xs) {
        Xs = xs;
    }

    public void setXslist(List<Xs> xslist) {
        this.xslist = xslist;
    }

    public List<Xs> getXslist() {
        return xslist;
    }

    public Xs xs(String xh) throws SQLException {//查询学生信息
        String sql = "select * from newjw.ss_xjb where xh=?";
        String[] parameter = {xh};
        sqlhelp.executeQuery(sql, parameter);
        ArrayList list = sqlhelp.executeQuery(sql, parameter);
        Xs xs = null;
        if (list != null) {
            Object[] obj = (Object[]) list.get(0);
            xs = new Xs();
            xs.setXm(obj[0].toString());
            xs.setXh(obj[1].toString());
            xs.setXb(obj[2].toString());
            xs.setSfzh(obj[3].toString());
            xs.setMz(obj[4].toString());
            xs.setJg(obj[5].toString());
            xs.setZzmm(obj[6].toString());
            xs.setCsrq(obj[7].toString());
            xs.setBj(obj[8].toString());
            xs.setRxrq(obj[9].toString());
            xs.setZy(obj[10].toString());
            xs.setXy(obj[11].toString());
            xs.setPyfa(obj[12].toString());
            xs.setYwxm(obj[13].toString());
            xs.setYwzym(obj[14].toString());
            xs.setYwxsm(obj[15].toString());
            return xs;
        }
        return xs;
    }


    public double getJD(String xh) throws SQLException{//计算绩点
        String sql1="select KCH,KCM,XF,KCSX,KSSJ,LRFS,CJ,DJCJ,XDFS,BKFS,WTGYY from newjw.ss_cjb where xh=?";
        String[] parameter1={xh};
        sqlhelp.executeQuery(sql1,parameter1);
        ArrayList list1= sqlhelp.executeQuery(sql1,parameter1);
        ArrayList<Cj> cj1=new ArrayList<>();
        double f1=0;
        float s=0;
        float m=0;
        float n=0;
        int t=0;
        if(list1!=null) {
            for (int i = 0; i < list1.size(); i++) {
                Object[] obj = (Object[]) list1.get(i);
                Cj cj = new Cj();
                cj.setKch(obj[0].toString());
                cj.setKcm(obj[1].toString());
                cj.setXf(obj[2].toString());
                cj.setKcsx(obj[3].toString());
                cj.setKssj(obj[4].toString());
                cj.setLrfs(Integer.parseInt(obj[5].toString()));
                int a = cj.getLrfs();
                if (a == 001) {
                    cj.setCj(obj[6].toString());
                } else {
                    cj.setDjcj(Double.valueOf(obj[7].toString()));
                    double b = cj.getDjcj();
                    if (b == (-90.000)) {
                        cj.setCj("95.000");
                    } else if (b == (-80.000)) {
                        cj.setCj("85.000");
                    } else if (b == (-70.000)) {
                        cj.setCj("75.000");
                    } else if (b == (-60.000)) {
                        cj.setCj("65.000");
                    } else {
                        cj.setCj("59");
                    }
                }
//                cj.setXdfs(obj[8].toString());
//                cj.setBkfs(obj[9].toString());
//                cj.setWtgyy(obj[10].toString());
                cj1.add(cj);
                float  b= Float.parseFloat(cj.getCj());
                if(cj.getKcsx().equals("必修")||cj.getKcsx().equals("选修")||cj.getKcsx().equals("任选")){
                    float c= Float.parseFloat(cj.getXf());
                    n+=c;
                    if(b>=60.000){
                        //float c= Float.parseFloat(cj.getXf());
                        b= (float) (b/10.0-5);
                        m=c*b;
                        s+=m;
                        //n+=c;
                    }
                }

            }
            System.out.println("绩点前的为"+s);
            System.out.println("n为" + n);
            s=s/n;
            System.out.println("成绩的绩点为" + s);
            System.out.println(n);
            BigDecimal bg = new BigDecimal(s);
            f1 = bg.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
            System.out.println("绩点："+f1);
        }
        return f1;
    }


    public List<Cj> cjb(String xh) throws SQLException {//查询成绩+补考次数+最高成绩
        String sql2 = "select distinct KCH,KCM from newjw.ss_cjb where xh=? ";
        String[] parameter2 = {xh};
        sqlhelp.executeQuery(sql2, parameter2);
        ArrayList list2 = sqlhelp.executeQuery(sql2, parameter2);
        List<Cj> cjl0 = new ArrayList<>();
        if (list2 != null) {
            for (int i = 0; i < list2.size(); i++) {
                Object[] obj = (Object[]) list2.get(i);
                Cj cj = new Cj();
                cj.setKch(obj[0].toString());
                cj.setKcm(obj[1].toString());
//                for (Object j : obj) {
//                    System.out.println(j);
//                }
                System.out.print(list2.size());
                cjl0.add(cj);
            }
        }
        String sql3 = "select KCH,KCM,XF,KCSX,KSSJ,LRFS,CJ,DJCJ,XDFS,BKFS,WTGYY from newjw.ss_cjb where xh=?";
        String[] parameter3 = {xh};
        sqlhelp.executeQuery(sql3, parameter3);
        ArrayList list3 = sqlhelp.executeQuery(sql3, parameter3);
        List<Cj> cjl1 = new ArrayList<>();
        List<Cj> cjl2 = new ArrayList<>();
        if (list3 != null) {
            for (int m = 0; m < list3.size(); m++) {
                Object[] obj3 = (Object[]) list3.get(m);
                Cj cj3 = new Cj();
                cj3.setKch(obj3[0].toString());
                cj3.setKcm(obj3[1].toString());
                cj3.setXf(obj3[2].toString());
                cj3.setKcsx(obj3[3].toString());
                cj3.setKssj(obj3[4].toString());
                cj3.setLrfs(Integer.parseInt(obj3[5].toString()));
                int a = cj3.getLrfs();
                if (a == 001) {
                    cj3.setCj(obj3[6].toString());
                } else {
                    cj3.setDjcj(Double.valueOf(obj3[7].toString()));
                    double b = cj3.getDjcj();
                    if (b == (-90.000)) {
                        cj3.setCj("95.000");
                    } else if (b == (-80.000)) {
                        cj3.setCj("85.000");
                    } else if (b == (-70.000)) {
                        cj3.setCj("75.000");
                    } else if (b == (-60.000)) {
                        cj3.setCj("65.000");
                    } else {
                        cj3.setCj("59");
                    }

                }
                for (Object j : obj3) {
                    System.out.println(j);
                }
                cjl1.add(cj3);
            }


            for (int j = 0; j < cjl0.size(); j++) {
                int n = 0;
                int temp = 0;
                int t=0;
                ArrayList l=new ArrayList<>();
                for (int k = 0; k < cjl1.size(); k++) {
                    if (cjl0.get(j).getKch().equals(cjl1.get(k).getKch())) {
                        cjl0.get(j).setS(n++);
                        if (Float.parseFloat(cjl1.get(k).getCj()) >Float.parseFloat(cjl1.get(temp).getCj())) {
                            temp = k;

                            continue;
                        } else if(Float.parseFloat(cjl1.get(k).getCj())>=60&&(Float.parseFloat(cjl1.get(temp).getCj())>=60)){
                            temp=k;
                            cjl0.get(j).setS(0);
                            continue;
                        }
                    }
                }
                Cj cj1 = new Cj();
                cj1.setKch(cjl0.get(j).getKch());
                cj1.setKcm(cjl0.get(j).getKcm());
                cj1.setXf(cjl1.get(temp).getXf());
                cj1.setKcsx(cjl1.get(temp).getKcsx());
                cj1.setKssj(cjl1.get(temp).getKssj());
                cj1.setLrfs((cjl1.get(temp).getLrfs()));
                if (Integer.parseInt(String.valueOf(cjl1.get(temp).getLrfs())) == 001) {
                    cj1.setCj(cjl1.get(temp).getCj());
                } else {
                    cj1.setDjcj(Double.valueOf(cjl1.get(temp).getDjcj()));
                    double b = cj1.getDjcj();
                    if (b == (-90.000)) {
                        cj1.setCj("优秀");
                    } else if (b == (-80.000)) {
                        cj1.setCj("良好");
                    } else if (b == (-70.000)) {
                        cj1.setCj("中");
                    } else if (b == (-60.000)) {
                        cj1.setCj("及格");
                    } else {
                        cj1.setCj("不及格");
                    }
                }
                if (cjl0.get(j).getS() != 0) {
                    cj1.setXdfs("补" + (cjl0.get(j).getS()));
                } else {
                    cj1.setXdfs("正常");
                }
                cjl2.add(cj1);
            }
        }

        return cjl2;
    }

    public float zxf(String xh) throws SQLException {//查询总学分
        float s=0;
        DBDao dao=new DBDao();
        List<Cj> list=new ArrayList();
        list=dao.cjb(xh);
        int a=0;
        for(int i=0;i<list.size();i++){
            if(list.get(i).getCj()=="优秀"){
                a=95;
            }else if(list.get(i).getCj()=="良好"){
                a=85;
            }else if(list.get(i).getCj()=="中"){
                a=75;
            }else if(list.get(i).getCj()=="及格"){
                a=65;
            }else if(list.get(i).getCj()=="不及格"){
                a=59;
            }else {
                a= Integer.parseInt((list.get(i).getCj()));
            }
            if(a>=60){
                s+=Float.parseFloat(list.get(i).getXf());
            }
        }
        return s;
    }

}



