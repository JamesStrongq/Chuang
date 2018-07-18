package com.chuang.dbc;

import java.sql.*;
import java.util.ArrayList;

public class sqlhelp {
    private static Connection con = null;

    private static PreparedStatement ps = null;

    private static ResultSet rs = null;

    private static CallableStatement cs = null;


    /**
     * 提供查询方法
     * @param sql sql语句
     * @param parameters 给问号赋值的参数组
     * @return {@link ArrayList}
     */
    public static ArrayList executeQuery(String sql, String[] parameters) {

        ArrayList al = new ArrayList();

        try {
            con = DBUtil.getConnection();
            ps = con.prepareStatement(sql);

            //给sql语句中的问号赋值
            if (parameters != null) {
                for (int i = 0; i < parameters.length; i++) {
                    ps.setObject(i+1, parameters[i]);
                }
            }

            rs = ps.executeQuery();

            //得到结果集(rs)的结构
            ResultSetMetaData rsmd = rs.getMetaData();

            //通过rsmd可以得到该结果集有多少列
            int columnNum = rsmd.getColumnCount();

            //从rs中取出数据，并且封装到ArrayList中
            while (rs.next()) {

               Object []objects = new Object[columnNum];
                for(int i = 0; i < objects.length; i++) {
                    objects[i] = rs.getObject(i + 1);
                }

                al.add(objects);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, ps, con);
        }

        return al;
    }



}
