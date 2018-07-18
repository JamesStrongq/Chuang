<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <style type="text/css">
        *{
            padding:0;
            margin:0;
        }
        table{
            border-collapse:collapse;
            border-spacing:0;
            border-left:1px solid black;
            border-top:1px solid black;
        }
        .small-font{
            font-size: 8px;
            -webkit-transform-origin-x: 0;
            -webkit-transform: scale(0.60);
        }
        tr,td{
            border-right:1px solid black;
            border-bottom:1px solid black;
            /*font-size: 12px;*/
        }
        body{
            height: 8000px;
        }
        .tit{
            width:800px;
            height:20px;
            margin:0 auto;
            text-align: center;

        }
        .tit h3{
            line-height:80px;
        }
        .header{
            width:800px;
            height:204px;
            border:1px solid black;
            margin:0 auto;
            margin-top:60px;
            text-align: center;
            font-size: 13px;
        }
        table{
            text-align:center;
            width:802px;

        }

        .header .text{
            float:left;
            height:204px;
            width:680px;
        }
        .header .pic{
            float:left;
            width: 119px;
            height:160px;
            border-left:1px solid black ;
            border-bottom:1px solid black ;
        }
        .header .text .row1{
            height:31.2px;
            border-bottom: 1px solid black;
        }
        .header .text .row2{
            height:31.2px;
            border-bottom: 1px solid black;
        }
        .header .text .row3{
            height:31.2px;
            border-bottom: 1px solid black;
        }
        .header .text .row4{
            height:31.2px;
            border-bottom: 1px solid black;
        }
        .header .text .row5{
            height:31.2px;
            border-bottom: 1px solid black;
        }
        .header .text .row6{
            height: 44px;
            width: 800px;
            /*line-height: 44px;*/
        }
        .header .text .row1 .name{
            float:left;
            height:23.1px;
            width: 43px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row1 .name1{
            float:left;
            height:23.1px;
            width: 80px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row1 .num{
            float:left;
            height:23.1px;
            width: 43px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row1 .num1{
            float:left;
            height:23.1px;
            width: 130px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row1 .sex{
            float:left;
            height:23.1px;
            width: 43px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row1 .sex1{
            float:left;
            height:23.1px;
            width: 23px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row1 .id{
            float:left;
            height:23.1px;
            width: 80px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row1 .id1{
            float:left;
            height:23.1px;
            width: 231px;
            padding-top: 8.1px;
        }
        .header .text .row2 .minzu{
            float:left;
            height:23.1px;
            width: 43px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row2 .minzu1{
            float:left;
            height:23.1px;
            width: 70px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row2 .jiguan{
            float:left;
            height:23.1px;
            width: 43px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row2 .jiguan1{
            float:left;
            height:23.1px;
            width: 113px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row2 .zzmm{
            float:left;
            height:23.1px;
            width: 70px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row2 .zzmm1{
            float:left;
            height:23.1px;
            width: 100px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row2 .birth{
            float:left;
            height:23.1px;
            width: 80px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row2 .birth1 {
            float: left;
            height: 23.1px;
            width: 154px;
            padding-top: 8.1px;
        }
        .header .text .row3 .class{
            float:left;
            height:23.1px;
            width: 43px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row3 .class1{
            float:left;
            height:23.1px;
            width: 125px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row3 .sdate{
            float:left;
            height:23.1px;
            width: 115px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row3 .sdate1{
            float:left;
            height:23.1px;
            width: 105px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row3 .gdate{
            float:left;
            height:23.1px;
            width: 80px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row3 .gdate1 {
            float: left;
            height: 23.1px;
            /*width: 154px;*/
            padding-top: 8.1px;
        }
        .header .text .row4 .zhuanye{
            float:left;
            height:23.1px;
            width: 43px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row4 .zhuanye1{
            float:left;
            height:23.1px;
            width: 260px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row4 .zyfx{
            float:left;
            height:23.1px;
            width: 94px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row4 .zyfx1 {
            float: left;
            height: 23.1px;
            /*width: 154px;*/
            padding-top: 8.1px;
        }
        .header .text .row5 .yuanxi{
            float:left;
            height:23.1px;
            width: 43px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row5 .yuanxi1{
            float:left;
            height:23.1px;
            width: 260px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row5 .pyfa{
            float:left;
            height:23.1px;
            width: 94px;
            border-right: 1px solid black;
            padding-top: 8.1px;
        }
        .header .text .row5 .pyfa1 {
            float: left;
            height: 23.1px;
            /*width: 154px;*/
            padding-top: 8.1px;
        }
        .header .text .row6 .row6l{
            float: left;
            width: 399px;
            height: 44px;
            border-right:1px solid #000000;
        }
        .header .text .row6 .kcm{
            line-height:44px;
            float: left;
            width: 149px;
            border-right:1px solid #000000;
            height: 44px;
        }
        .header .text .row6 .kcm1{
            line-height:44px;
            float: left;
            width: 150px;
            border-right:1px solid #000000;
            height: 44px;
        }
        .header .text .row6 .xf{
            line-height:44px;
            float: left;
            width: 40px;
            border-right:1px solid #000000;
            height: 44px;
        }
        .header .text .row6 .cj{
            line-height:44px;
            float: left;
            width: 65px;
            border-right:1px solid #000000;
            height: 44px;
        }
        .header .text .row6 .xdfs{
            padding-top:3px;
            float: left;
            width: 40px;
            border-right:1px solid #000000;
            height: 44px;
        }
        .header .text .row6 .kcsx{
            padding-top:3px;
            float: left;
            width: 40px;
            height: 44px;
            border-right:1px solid #000000;
        }
        .header .text .row6 .kssj{
            line-height:44px;
            float: left;
            width: 60px;
            height: 44px;
        }

        table{
            margin: 0 auto;
        }
        .footer{
            width: 800px;
            height: 98px;
            border: 1px solid #000;
            margin: 0 auto;
            border-top:0;
            font-size: 13px;
            text-align: center;
        }
        .footer .left{
            float: left;
            width: 500px;
            border-right:1px solid #000;
        }
        .frow1{
            height: 28px;
            border-bottom:1px solid #000;
            line-height:28px;

        }
        .frow2{
            height: 28px;
            border-bottom:1px solid #000;
            line-height:28px;
        }
        .frow3{
            height: 40px;
            line-height:40px;
        }
        .yhzxf{
            float: left;
            width: 120px;
            border-right:1px solid #000;
        }
        .yhzxf1{
            float: left;
            width: 40px;
            border-right:1px solid #000;
        }
        .pjxf{
            float: left;
            width: 120px;
            border-right:1px solid #000;
        }
        .pjxf1{
            float: left;
            width: 40px;
            border-right:1px solid #000;
        }
        .yqxf{
              float: left;
              width: 120px;
              border-right:1px solid #000;
          }
        .yqxf1{
            float: left;
            width: 55px;
        }
        .hdxw{
            float: left;
            width: 120px;
            border-right:1px solid #000;
        }
        .hdxw1{
            float: left;
            width: 379px;
        }
        .bz{
            float: left;
            width: 120px;
            border-right:1px solid #000;
        }
        .bz1 {
            float: left;
            width: 379px;
        }
        .qianzi{
            height: 98px;
            float: left;
            width: 150px;
            border-right:1px solid #000;
        }
        /*#kcm{*/
            /*font-size: 8px;*/
            /*z-index: 999;*/
        /*}*/
    </style>
</head>
<body>
<div class="tit"><h3>中北大学学生中文成绩单</h3></div>
<div class="header">
    <div class="text">
        <div class="row1">
            <div class="name">姓名</div>
            <div class="name1">
                <s:property value="xs.sname"/>
            </div>
            <div class="num">学号</div>
            <div class="num1">
                <s:property value="xs.sno"/>
            </div>
            <div class="sex">性别</div>
            <div class="sex1">
                <s:property value="xs.ssex"/>
            </div>
            <div class="id">身份证号</div>
            <div class="id1">
                <s:property value="xs.sidnum"/>
            </div>

        </div>
        <div class="row2">
            <div class="minzu">民族</div>
            <div class="minzu1">
                <s:property value="xs.snation"/>
            </div>
            <div class="jiguan">籍贯</div>
            <div class="jiguan1">
                <s:property value="xs.snationplace"/>
            </div>
            <div class="zzmm">政治面貌</div>
            <div class="zzmm1">
                <s:property value="xs.spoliticsstatus"/>
            </div>
            <div class="birth">出生日期</div>
            <div class="birth1">
                <s:property value="xs.sbrith"/>
            </div>
        </div>
        <div class="row3">
            <div class="class">班级</div>
            <div class="class1">
                <s:property value="xs.sclass"/>
            </div>
            <div class="sdate">入学日期</div>
            <div class="sdate1">
                <s:property value="xs.sendate"/>
            </div>
            <div class="gdate">毕业日期</div>
            <div class="gdate1">
                <s:property value="xs.sgraddate"/>
            </div>
        </div>
        <div class="row4">
            <div class="zhuanye">专业</div>
            <div class="zhuanye1">
                <s:property value="xs.smajor"/>
            </div>
            <div class="zyfx">专业方向</div>
            <div class="zyfx1">

            </div>
        </div>
        <div class="row5">
            <div class="yuanxi">院系</div>
            <div class="yuanxi1">
                <s:property value="xs.sdepartment"/>
            </div>
            <div class="pyfa">培养方案</div>
            <div class="pyfa1">软件工程(软件开发与测试)</div>
        </div>
        <div class="row6">
            <div class="row6l">
                <div class="kcm">课程名</div>
                <div class="xf">学分</div>
                <div class="cj">成绩</div>
                <div class="xdfs">修读<br>方式</div>
                <div class="kcsx"><p>课程<br>属性</p></div>
                <div class="kssj">考试时间</div>
            </div>
            <div class="row6r">
                <div class="kcm1">课程名</div>
                <div class="xf">学分</div>
                <div class="cj">成绩</div>
                <div class="xdfs">修读<br>方式</div>
                <div class="kcsx"><p>课程<br>属性</p></div>
                <div class="kssj">考试时间</div>
            </div>
        </div>
    </div>

    <div class="pic"></div>
</div>
<table border="1" bordercolor="#000000" style="border-collapse:collapse;margin: 0 auto">
    <!--<tr>-->
        <!--&lt;!&ndash;<td>课程号</td>&ndash;&gt;-->
        <!--<td> 课程名</td>-->
        <!--<td>学分</td>-->
        <!--<td>修读方式</td>-->
        <!--<td>考试时间</td>-->
        <!--<td>成绩</td>-->
        <!--<td>修读方式</td>-->
        <!--&lt;!&ndash;<td>课程号</td>&ndash;&gt;-->
        <!--<td>课程名</td>-->
        <!--<td>学分</td>-->
        <!--<td>修读方式</td>-->
        <!--<td>考试时间</td>-->
        <!--<td>成绩</td>-->
        <!--<td>修读方式</td>-->
    <!--</tr>-->
    <tr>
        <!--<td>001</td>-->
        <td width="150px" id="kcm1" style="font-size:12px;text-align:left;white-space:nowrap;max-width: 150px">oracle</td>
        <td width="40px" style="font-size: 12px">3.0</td>
        <td width="65px" style="font-size: 12px;text-align: right">100</td>
        <td width="40px" style="font-size: 12px">正常</td>
        <td width="40px" style="font-size: 12px">必修</td>
        <td width="60px" style="font-size: 12px">2018-4</td>
        <!--<td>002</td>-->
        <td width="150px" id="kcm2" style="font-size:12px;text-align:left;white-space:nowrap;max-width: 150px">大学生职业发展与就业指导</td>
        <script>
            var kcm1 = document.getElementById("kcm1");
            var kcmm1 = kcm1.innerHTML;
            console.log(getByteLen(kcmm1));
            var kcmmlength1 = getByteLen(kcmm1);
            if(kcmmlength1>24){
                kcm1.className = "small-font";
            }
            var kcm2 = document.getElementById("kcm2");
            var kcmm2 = kcm2.innerHTML;
            console.log(getByteLen(kcmm2));
            var kcmmlength2 = getByteLen(kcmm2);
            if(kcmmlength2>24){
                kcm2.className = "small-font";
            }

            function getByteLen(val) {
                var len = 0;
                for (var i = 0; i < val.length; i++) {
                    var a = val.charAt(i);
                    if (a.match(/[^\x00-\xff]/ig) != null)
                    {
                        len += 2;
                    }
                    else
                    {
                        len += 1;
                    }
                }
                return len;
            }
        </script>
        <td width="40px" style="font-size: 12px">2.0</td>
        <td width="65px" style="font-size: 12px;text-align: right;">60</td>
        <td width="40px" style="font-size: 12px">正常</td>
        <td width="40px" style="font-size: 12px">必修</td>
        <td width="60px" style="font-size: 12px">2018-07</td>
    </tr>



</table>
<div class="footer">
    <div class="left">
        <div class="frow1">
            <div class="yhzxf">已获总学分数</div>
            <div class="yhzxf1">129</div>
            <div class="pjxf">平均学分绩点</div>
            <div class="pjxf1">3.79</div>
            <div class="yqxf">方案要求学分</div>
            <div class="yqxf1">131.5</div>
        </div>
        <div class="frow2">
            <div class="hdxw">获得学位</div>
            <div class="hdxw1"></div>
        </div>
        <div class="frow3">
            <div class="bz">备注</div>
            <div class="bz1"></div>
        </div>
    </div>
    <div class="right">
        <div class="qianzi">院长签字</div>
        <div class="gongzhang">公章</div>
    </div>
</div>
</body>
</html>
