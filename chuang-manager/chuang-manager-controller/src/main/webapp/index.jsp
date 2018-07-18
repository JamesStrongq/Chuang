<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home</title>
    <link rel="favicon" href="/assets/images/favicon.png">
    <link rel="stylesheet" media="screen" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="/assets/css/style.css">
    <link rel="stylesheet" id="camera-css" href="/assets/css/camera.css" type="text/css" media="all">
    <!--<link type="text/css" rel="stylesheet" media="all" href="assets/css/keyboardcss/keyboard.css"/>-->
    <!--<link type="text/css" rel="stylesheet" media="all" href="assets/css/keyboardcss/reset.css"/>-->
    <!--[if lt IE 9]>
    <script src="/assets/js/html5shiv.js"></script>
    <script src="/assets/js/respond.min.js"></script>
    <![endif]-->
    <style>
        .softkeyboard{ display:none;z-index:999;position: absolute;top:271px;left:863px;}
        /*.shuru{position: absolute;}*/
        .softkeyboard td{ padding:5px;}
        .c_panel{ background-color:#fff; text-align:center; padding:24px;border: 1px solid #ccc}
        .i_button{ border:none; height:60px; width:75px; font-size:22px; font-family:"微软雅黑"; background-color:#666; color:#fff;}
        .i_button:active{ background-color:#999;}
        .i_button_num{}
        .i_button_btn{ float:right; width:132px;}
        .i_button_bs{ float:right; width:148px;}
        .i_button_0{ float:right; width:255px;}
    </style>
</head>
<body>
<!-- navbar -->
<div class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span
                    class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            <a class="navbar-brand" href="login.html">
                <img src="assets/images/zblogo.png" alt="Techro HTML5 template">
            </a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav pull-right mainNav">
                <li>中北大学学生自助服务系统</li>
            </ul>
        </div>
    </div>
</div>
<!-- /navbar -->

<!-- Header -->
<header id="head">
    <div class="container">
        <div class="heading-text">
            <h1 class="animated flipInY delay1">
                <form action="/page/getCamera.html" method="post">
                    请输入学号：<input type="text" name="xh" class="keyboard input_cur shuru" id="inp"
                                 style="padding:10px;width:320px;height:60px;color: #000000;font-size: 80%;font-family: microsoft yahei"/>
                    <input type="submit" value="确认" class="button-blue">
                    <%--<a href="/page/getCamera.html" class="button-blue">--%>
                        <%--<span>确认</span>--%>
                    <%--</a>--%>
                </form>
            </h1>
            <p>请在输入学号后点击“确认”，进入人脸识别界面完成系统登录</p>
        </div>
        <div class="softkeyboard" id="softkeyboard" name="softkeyboard">
            <div class="c_panel shuzi" id="shuzi">
                <table align="center" width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                    <tr>
                        <td><input class="i_button i_button_num" type="button" onclick="addValue('7');" value=" 7 "></td>
                        <td><input class="i_button i_button_num" type="button" onclick="addValue('8');" value=" 8 "></td>
                        <td><input class="i_button i_button_num" type="button" onclick="addValue('9');" value=" 9 "></td>
                        <td><input class="i_button i_button_btn" type="button" onclick="clearValue();" value="清空"></td>
                    </tr>
                    <tr>
                        <td><input class="i_button i_button_num" type="button" onclick="addValue('4');" value=" 4 "></td>
                        <td><input class="i_button i_button_num" type="button" onclick="addValue('5');" value=" 5 "></td>
                        <td><input class="i_button i_button_num" type="button" onclick="addValue('6');" value=" 6 "></td>
                        <td><input class="i_button i_button_btn" type="button" value="回退" onclick="backspace();"></td>
                    </tr>
                    <tr>
                        <td><input class="i_button i_button_num" type="button" onclick="addValue('1');" value=" 1 "></td>
                        <td><input class="i_button i_button_num" type="button" onclick="addValue('2');" value=" 2 "></td>
                        <td><input class="i_button i_button_num" type="button" onclick="addValue('3');" value=" 3 "></td>
                    </tr>
                    <tr>
                        <td colspan="3"><input class="i_button i_button_0" type="button" onclick="addValue('0');" value=" 0 ">
                        </td> <td><input class="i_button i_button_btn" type="button" value="完成" onclick="closekb()"></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div style="text-align:center;">
            </div>
        </div>
        <div class="fluid_container">
            <div class="camera_wrap camera_emboss pattern_1" id="camera_wrap_4">
                <div data-thumb="assets/images/slides/thumbs/zbdx1.jpg" data-src="assets/images/slides/zbdx1.jpg">
                </div>
                <div data-thumb="assets/images/slides/thumbs/zbdx8.jpg" data-src="assets/images/slides/zbdx8.jpg">
                </div>
                <div data-thumb="assets/images/slides/thumbs/zbdx9.jpg" data-src="assets/images/slides/zbdx9.jpg">
                </div>
            </div>
        </div>
    </div>
</header>
<!-- /Header -->

<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="grey-box-icon">
                <div class="icon-box-top grey-box-icon-pos">
                    <img src="assets/images/1.png" alt=""/>
                </div>
                <h3>打印成绩单</h3>
            </div>
        </div>
        <div class="col-md-3">
            <div class="grey-box-icon">
                <div class="icon-box-top grey-box-icon-pos">
                    <img src="assets/images/2.png" alt=""/>
                </div>
                <h3>打印在校证明</h3>
            </div>
        </div>
        <div class="col-md-3">
            <div class="grey-box-icon">
                <div class="icon-box-top grey-box-icon-pos">
                    <img src="assets/images/3.png" alt=""/>
                </div>
                <h3>打印考试证明</h3>
            </div>
        </div>
        <div class="col-md-3">
            <div class="grey-box-icon">
                <div class="icon-box-top grey-box-icon-pos">
                    <img src="assets/images/4.png" alt=""/>
                </div>
                <h3>打印补办学生证申请表</h3>
            </div>
        </div>
    </div>
</div>

<!-- JavaScript -->
<script type="text/javascript" src="/assets/js/jquery.min.js"></script>
<script type="text/javascript" src="/assets/js/fancybox/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="/assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/assets/js/camera.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<!--<script src="assets/js/keyboard.js"></script>-->
<!--<script>-->
    <!--jQuery(function () {-->
        <!--jQuery('.keyboard').keyboard({-->
            <!--lang: 'en'-->
        <!--});-->
    <!--})-->
<!--</script>-->
<!--<script type="text/javascript" src="assets/js/jquery-1.7.js"></script>-->
<script>
    //定义当前是否大写的状态
    var CapsLockValue=0;
    var curEditName;
    var check;

    //打开
    var inp = document.getElementById("inp");
    inp.onclick = function () {
        document.getElementById("softkeyboard").style.display = "inline-block";
    }

    //关闭
    function closekb() {
        document.getElementById("softkeyboard").style.display = "none";
    }

    //给输入的密码框添加新值
    function addValue(newValue)
    {
        CapsLockValue==0?$(".input_cur").val($(".shuru").val()+ newValue):$(".input_cur").val($(".shuru").val()+ newValue.toUpperCase())
    }
    //清空
    function clearValue()
    {
        $(".input_cur").val("");
    }
    //实现BackSpace键的功能
    function backspace()
    {
        var longnum=$(".input_cur").val().length;
        var num ;
        num=$(".input_cur").val().substr(0,longnum-1);
        $(".input_cur").val(num);
    }
    function changePanl(oj){
        $("#"+oj).siblings("div").hide();
        $("#"+oj).show();
    }

    window.onload=function(){
//	changePanl("zimu");
    }
</script>

<script>
    jQuery(function () {

        jQuery('#camera_wrap_4').camera({
            transPeriod: 500,
            time: 3000,
            height: '600',
            loader: 'false',
            pagination: true,
            thumbnails: false,
            hover: false,
            playPause: false,
            navigation: false,
            opacityOnGrid: false,
            imagePath: 'assets/images/'
        });
    });
</script>
</body>
</html>
