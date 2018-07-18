package com.chuang.utils;

import javax.mail.Message.RecipientType;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

public class SendEmailUtil {

    public static final String SMTPSERVER = "smtp.qq.com";
    public static final String SMTPPORT = "465";
    public static final String ACCOUT = "691603690@qq.com";
    public static final String PWD = "bdceiyqlzphobdcj";

    public void testSendEmail(String receiveAddress) throws Exception{
        //创建邮件配置
        Properties props = new Properties();
        props.setProperty("mail.transport.protocol","smtp");//使用协议,javaemail规范要求
        props.setProperty("mail.smtp.host",SMTPSERVER);//发件人的邮箱的SMTP服务器地址
        props.setProperty("mail.smtp.port",SMTPPORT);
        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        props.setProperty("mail.smtp.auth","true");//需要请求认证
        props.setProperty("mail.smtp.ssh.enable","true");//开启ssl

        //根据邮件配置创建会话
        Session session = Session.getDefaultInstance(props);
        //开启debug模式,可以看到更多详细的日志
        session.setDebug(true);
        //创建邮件
        MimeMessage message = createEmail(session,receiveAddress);

        //获取传输通道
        Transport transport = session.getTransport();
        transport.connect(SMTPSERVER,ACCOUT,PWD);
        //连接并发送邮件
        transport.sendMessage(message,message.getAllRecipients());
        transport.close();
    }

    public MimeMessage createEmail(Session session,String address) throws Exception{
        //根据会话创建邮件
        MimeMessage message = new MimeMessage(session);
        //address邮件地址,personal邮件昵称,charset编码方式
        InternetAddress formAddress = new InternetAddress(ACCOUT,"kimi","utf-8");
        //设置发送邮件方
        message.setFrom(formAddress);

        InternetAddress receiveAddress = new InternetAddress(address,"test","utf-8");
        //设置邮件接受方
        message.setRecipient(RecipientType.TO,receiveAddress);
        //设置邮件标题
        message.setSubject("测试标题","utf-8");
        message.setText("我是程序猿");
        //设置显示的发送时间
        message.setSentDate(new Date());
        //保存设置
        message.saveChanges();
        return message;
    }
}
