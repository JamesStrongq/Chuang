package com.chuang.dbc;


import java.sql.*;

public class DBUtil {
    //定义链接所需要的变量
    private static Connection con = null;
    private static PreparedStatement ps = null;
    private static ResultSet rs = null;

    //定义链接数据库所需要的参数
  //  @Value("${DBDRIVER}")
    public static String DBDRIVER = "oracle.jdbc.driver.OracleDriver";
  //  @Value("${DBURL}")
    public static String DBURL = "jdbc:oracle:thin:@202.207.177.39:1521:orcl";
   // @Value("${DBUSER}")
    public static String DBUSER = "jw_ssjk";
   // @Value("${DBPASS}")
    public static String DBPASS = "jw_ssjk0351";





    /**
     * 加载驱动
     */
//    static {
//        try {
//            Class.forName(DBDRIVER);
//
//        } catch (Exception e) {
//            System.out.println("数据库链接失败！");
//            e.printStackTrace();
//        }
//    }

    static {
        try {
            //加载驱动
            Class.forName("oracle.jdbc.driver.OracleDriver");

        } catch (Exception e) {
            System.out.println("驱动加载失败！");
            e.printStackTrace();
        }
    }





    /**
     * 得到Connection链接
     * @return Connection
     */
    public static Connection getConnection() {

        try {
            //建立连接
            con = DriverManager.getConnection("jdbc:oracle:thin:@202.207.177.39:1521:orcl","jw_ssjk","jw_ssjk0351");
            System.out.println("连接成功");
        } catch (Exception e) {
            System.out.println("数据库链接失败！");
            e.printStackTrace();
        }

        return con;
    }

    /**
     * 统一的资源关闭函数
     * @param rs
     * @param ps
     */
    public static void close(ResultSet rs, Statement ps, Connection con){

        if(rs != null) {
            try {
                rs.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(ps != null) {
            try {
                ps.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(con != null) {
            try {
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}

