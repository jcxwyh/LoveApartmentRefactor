<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <base href="<%=basePath%>">
        <link rel="stylesheet" href="assets/css/layui.css"/>
        <link rel="stylesheet" href="assets/css/global/global.css">
        <script src="assets/js/jquery-3.2.1.js"></script>
        <script src="assets/js/layui.js"></script>
    </head>
    <body>
    <div class="layui-layout layui-layout-admin">
        <jsp:include page="../component/header.jsp"/>
        <div class="layui-body">
            <!-- 内容主体区域 -->
            <div style="padding-left: 8px;">
                <!-- 一个Tab -->
                <div class="layui-tab" lay-allowClose="true">
                    <ul class="layui-tab-title">
                        <li class="layui-this">管理
                            <i class="layui-icon layui-unselect layui-tab-close" style="display: none;">ဆ</i>
                        </li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show">
                            <!-- 写一个轮播 -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
    <script>
        layui.use('element',function(){
            var element = layui.element;
        });
    </script>
</html>