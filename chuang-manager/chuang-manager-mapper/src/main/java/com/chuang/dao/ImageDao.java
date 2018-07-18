package com.chuang.dao;

import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@Repository
public class ImageDao {

    private static String DBDRIVER = "com.mysql.jdbc.Driver";
    private static String DBURL = "jdbc:mysql://localhost:3306/dachuang?characterEncoding=utf-8";
    private static String DBUSER = "root";
    private static String DBPASS = "0408";
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public ImageDao(){
        try{
            System.out.println("com.mysql.jdbc.Driver");
            Class.forName(DBDRIVER);
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dachuang?characterEncoding=utf-8","root","0408");
            System.out.println("连接成功");
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("连接失败");
        }
    }

    public String getImage(String xh){
        String imagePath = "";
        try {
            String sql = "select * from image where xh = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,xh);
            rs = pstmt.executeQuery();
            while(rs.next()){
                imagePath = rs.getString("imagePath");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return imagePath;
    }

    public void insertImage(String xh,String imagePath){
        try{
            String sql = "insert into image VALUES (?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,xh);
            pstmt.setString(2,imagePath);
            pstmt.execute();
        }catch (Exception e){
            e.printStackTrace();
        }
    }


}
