<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>爱情公寓管理</title>
        <link rel="icon" href="assets/img/logo.png"/>
        <base href="<%=basePath%>">
        <link rel="stylesheet" href="assets/css/layui.css"/>
        <link rel="stylesheet" href="assets/css/global/global.css">
        <link rel="stylesheet" href="assets/css/welcome/welcome.css">
        <link rel="stylesheet" type="text/css" href="assets/css/hp-layui.css" />
        <script src="assets/js/jquery-3.2.1.js"></script>
        <script src="assets/js/layui.js"></script>
    </head>
    <body class="layui-layout-body hp-green-theme">
        <div class="layui-layout layui-layout-admin">
            <jsp:include page="component/header.jsp"/>
            <div class="layui-body">
                <!-- 内容主体区域 -->
                <div style="padding-left: 8px;">
                    <!-- 一个Tab -->
                    <div class="layui-tab" lay-allowClose="true">

                        <div class="layui-tab-content">
                            <div class="layui-carousel box-carousel" id="first">
                                <div carousel-item>
                                    <div><img src="assets/img/colla/1.jpg" /></div>
                                    <div><img src="assets/img/colla/2.jpg" /></div>
                                    <div><img src="assets/img/colla/3.jpg" /></div>
                                    <div><img src="assets/img/colla/4.jpg" /></div>
                                    <div><img src="assets/img/colla/5.jpg" /></div>
                                    <div><img src="assets/img/colla/7.jpg" /></div>
                                    <div><img src="assets/img/colla/8.jpg" /></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        layui.use(["element","carousel"],function(){
           var element = layui.element;
           var carousel = layui.carousel;

            carousel.render({
                elem:"#first",
                width:'100%',
                height:'520',
                arrow:'hover',
                anim:'fade',
                interval:2000,
            });
        });
    </script>
</html>