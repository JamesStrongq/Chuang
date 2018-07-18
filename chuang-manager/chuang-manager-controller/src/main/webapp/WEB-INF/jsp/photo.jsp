<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ZH-CN">
<head>
    <meta charset="utf-8">
    <title>web RTC 测试</title>
    <style>
        .booth {
            width:400px;
            background:#ccc;
            border: 10px solid #ddd;
            margin: 0 auto;
        }
        /*#canvas{*/
            /*position: absolute;*/
            /*top:-1000px;*/
            /*left: -1000px;*/
        /*}*/
    </style>
</head>
<body>
<div class="booth">
    <video id="video" width="400" height="300"></video>
    <button id='tack'>识别</button>
    <canvas id='canvas' width='400' height='300'></canvas>
    <!--<img id='img' src=''>-->
</div>
<script type="text/javascript" src="../../js/jquery.min.js"></script>
<script>
    var video = document.getElementById('video'),
        canvas = document.getElementById('canvas'),
        snap = document.getElementById('tack'),
        img = document.getElementById('img'),
        vendorUrl = window.URL || window.webkitURL;

    //媒体对象
    navigator.getMedia = navigator.getUserMedia ||
        navagator.webkitGetUserMedia ||
        navigator.mozGetUserMedia ||
        navigator.msGetUserMedia;
    navigator.getMedia({
        video: true, //使用摄像头对象
        audio: false  //不适用音频
    }, function(strem){
        console.log(strem);
        video.src = vendorUrl.createObjectURL(strem);
        video.play();
    }, function(error) {
        //error.code
        console.log(error);
    });
    snap.addEventListener('click', function() {

        var Img = new Image(),
            dataURL = '';
        //绘制canvas图形
        canvas.getContext('2d').drawImage(video, 0, 0, 150, 100);

        //把canvas图像转为img图片
        dataURL = canvas.toDataURL('image/jpeg');


        jQuery.post('/camera/getImage.html', {
            snapData: dataURL
        }).done(function(rs) {
            rs = JSON.parse(rs);
            var jsonResult = rs.code;
            console.log(jsonResult);
            //if(jsonResult == 200) {
                $(location).attr("href", "http://localhost:8080/query/getPage.html")
            //}else {
              //  $(location).attr("href","http://localhost:8080/page/getError.html")
            //}
        }).fail(function(err) {
            $(location).attr("href","http://localhost:8080/page/getError.html")
        });

    })


</script>
</body>
</html>