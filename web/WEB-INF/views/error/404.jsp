<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>404</title>
        <base href="<%=basePath%>">
        <link rel="stylesheet" type="text/css" href="assets/css/font/latin.css"/>
        <link rel="stylesheet" type="text/css" href="assets/css/font/cyrillic.css"/>
        <link rel="stylesheet" type="text/css" href="assets/css/pageDemo/error/error.css"/>
    </head>
    <body style="overflow: hidden">

    <h1>404-找不到页面</h1>
    <section class="error-container">
        <span>4</span>
        <span><span class="screen-reader-text">0</span></span>
        <span>4</span>
    </section>


    <!--火箭-->
    <div id="animation">
        <a href="#" title="点击了解更多">
            <div class="spaceship">
                <div class="antenna"></div>
                <div class="body"></div>
                <div class="window"></div>
                <div class="fins"></div>
                <div class="rocket"></div>
                <div class="fireWrapper">
                    <div class="fire">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                </div>
            </div>
        </a>
    </div>
    </body>
</html>