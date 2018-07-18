<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <link href="../../css/bootstrap.min.css" rel='stylesheet' type='text/css'/>
    <link href="../../css/style.css" rel='stylesheet' type='text/css'/>
    <link href="../../css/font-awesome.css" rel="stylesheet">
    <script src="../../js/jquery-1.10.2.min.js"></script>
</head>
<body>
<div class="page-container">
    <div class="left-content">
        <div class="inner-content">
            <div class="header-section">
                <div class="top_menu">
                    <div class="profile_details_left">
                        <div id="dd" class="wrapper-dropdown-3" tabindex="1">
                            <div class="wrapper-exit"><img src="../../images/exit.png" width="20px" style="margin-right: 7px;"><span>退出登录</span></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="outter-wp" style="height:654px;padding-top: 230px">
                <center>
                    <h1>欢迎进入中北大学学生自助服务系统</h1>
                    <h3>请在菜单栏中选择您要使用的功能<a>&nbsp;（使用说明）</a></h3>
                </center>
            </div>
            <footer>
                <p>
                    版权所有 <a>中北大学软件学院</a> 综合科：0351-3924578 教学科：0351-3925275 学生科、团委：0351-3924613 科研与对外合作科：0351-3924595
                </p>
                <p>
                    邮箱：sti@nuc.edu.cn 本站由软件学院113创新实验室维护 后台管理
                </p>
            </footer>
        </div>
    </div>
    <div class="sidebar-menu">
        <header class="logo">
            <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="page.jsp"> <span
                id="logo"> <b style="font-size: 1.5em;color: #fff;font-weight: 300;">菜单栏</b></span>
            <!--<img id="logo" src="" alt="Logo"/>-->
        </a>
        </header>
        <div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
        <!--/down-->
        <div class="down">
            <a href="page.jsp"><img src="../../images/student.JPG"></a>
            <a href="page.jsp"><span class=" name-caret">${xhName}</span></a>
            <p>${xh}</p>
        </div>
        <!--//down-->
        <div class="menu">
            <ul id="menu">
                <li><a href="page.jsp"><i><img src="../../images/zhuye.png" width="16px" alt=""></i> <span>主页</span></a></li>
                <li id="menu-academico"><a href="#"><i class="fa fa-table"></i> <span>在校成绩单</span> <span
                        class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub">
                        <li id="menu-academico-avaliacoes"><a href="/page/getXs.html">中文成绩单</a></li>
                        <li id="menu-academico-boletim"><a href="1.html">英文成绩单</a></li>
                        <!--<li id="menu-academico-avaliacoes"><a href="calender.html">Calendar</a></li>-->

                    </ul>
                </li>
                <li id="menu-academico"><a href="#"><i class="fa fa-file-text-o"></i> <span>在读证明</span> <span
                        class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub">
                        <li id="menu-academico-avaliacoes"><a href="forms.html">本科生在读证明</a></li>
                        <li id="menu-academico-boletim"><a href="validation.html">研究生在读证明</a></li>
                    </ul>
                </li>
                <li><a href="typography.html"><i class="lnr lnr-pencil"></i> <span>考试证明</span></a></li>
                <li id="menu-academico"><a href="#"><i class="lnr lnr-book"></i> <span>补办学生证申请</span> <span
                        class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub">
                        <li id="menu-academico-avaliacoes"><a href="login.html">Login</a></li>
                        <li id="menu-academico-boletim"><a href="register.html">Register</a></li>
                        <li id="menu-academico-boletim"><a href="404.html">404</a></li>
                        <li id="menu-academico-boletim"><a href="sign.html">Sign up</a></li>
                        <li id="menu-academico-boletim"><a href="profile.html">Profile</a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="lnr lnr-envelope"></i> <span>其他</span><span class="fa fa-angle-right"
                                                                                      style="float: right"></span></a>
                    <ul>
                        <li><a href="inbox.html"><i class="fa fa-inbox"></i> Inbox</a></li>
                        <li><a href="compose.html"><i class="fa fa-pencil-square-o"></i> Compose Mail</a></li>
                        <li><a href="editor.html"><span class="lnr lnr-highlight"></span> Editors Page</a></li>

                    </ul>
                </li>
                <li id="menu-academico"><a href="#"><i class="lnr lnr-layers"></i> <span>其他</span> <span
                        class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub">
                        <li id="menu-academico-avaliacoes"><a href="grids.html">Grids</a></li>
                        <li id="menu-academico-boletim"><a href="media.html">Media Objects</a></li>

                    </ul>
                </li>
                <li><a href="chart.html"><i class="lnr lnr-chart-bars"></i> <span>其他</span> <span
                        class="fa fa-angle-right" style="float: right"></span></a>
                    <ul>
                        <li><a href="map.html"><i class="lnr lnr-map"></i> Maps</a></li>
                        <li><a href="graph.html"><i class="lnr lnr-apartment"></i> Graph Visualization</a></li>
                    </ul>
                </li>
                <li id="menu-comunicacao"><a href="#"><i class="fa fa-smile-o"></i> <span>More</span><span
                        class="fa fa-angle-double-right" style="float: right"></span></a>
                    <ul id="menu-comunicacao-sub">
                        <li id="menu-mensagens" style="width:120px"><a href="project.html">Projects <i
                                class="fa fa-angle-right"
                                style="float: right; margin-right: -8px; margin-top: 2px;"></i></a>
                            <ul id="menu-mensagens-sub">
                                <li id="menu-mensagens-enviadas" style="width:130px"><a href="ribbon.html">Ribbons</a>
                                </li>
                                <li id="menu-mensagens-recebidas" style="width:130px"><a href="blank.html">Blank</a>
                                </li>
                            </ul>
                        </li>
                        <li id="menu-arquivos"><a href="500.html">500</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
<script>
    var toggle = true;
    $(".sidebar-icon").click(function () {
        if (toggle) {
            $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
            $("#menu span").css({"position": "absolute"});
        }
        else {
            $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
            setTimeout(function () {
                $("#menu span").css({"position": "relative"});
            }, 400);
        }
        toggle = !toggle;
    });
</script>
<script src="../../js/scripts.js"></script>
<script src="../../js/bootstrap.min.js"></script>
</body>
</html>