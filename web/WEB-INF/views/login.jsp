<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="icon" href="assets/img/logo.png"/>
        <base href="<%=basePath%>">
        <link rel="stylesheet" href="assets/css/login/login.css"/>
        <link rel="stylesheet" href="assets/css/layui.css"/>
        <script src="assets/js/jquery-3.2.1.js"></script>
    </head>
    <body class="body">
        <div class="layui-container layui-anim layui-anim-upbit">
            <form class="lay-form" action="login" method="post">
                <div class="layui-row ">
                    <div class="layui-col-md2 layui-col-md-offset9 to-center">
                        <div class="layui-form-item">
                            <input type="text" name="username" required placeholder="用户名" class="layui-input"/>
                        </div>
                        <div class="layui-form-item">
                            <input type="password" name="pwd" required placeholder="密码" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md1 layui-col-md-offset9">
                        <div class="layui-form-item">
                            <input type="text" placeholder="验证码" class="layui-input layui-col-md1">
                        </div>
                    </div>
                    <div class="layui-col-md1 ">
                        <div class="layui-form-mid layui-word-aux" style="text-align: center;cursor:pointer">
                            <span style="margin-left:1em">点击生成</span>
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md2 layui-col-md-offset9">
                        <div class="layui-form-item">
                            <button class="layui-btn login-btn layui-btn-fluid ">登录</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </body>
    <script>
        setInterval(function(){
            var colorArr=[1,2,3,4,5,6,7,8,9,0,'a','b','c','d','e','f'];
            var color="#"+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)];
            $(".login-btn").css({backgroundColor:color});
        },300)
    </script>
</html>