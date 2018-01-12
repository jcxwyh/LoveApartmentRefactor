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
        <script src="assets/js/jquery-3.2.1.js"></script>
        <script src="assets/js/layui.js"></script>
    </head>
    <body class="layui-layout-body">
        <div class="layui-layout layui-layout-admin">
            <div class="layui-header">
                <div class="layui-logo"><h3>爱情公寓管理系统</h3></div>
                <ul class="layui-nav layui-layout-left" >
                    <li class="layui-nav-item">
                        <a href="javascript:;">解决方案</a>
                        <dl class="layui-nav-child"> <!-- 二级菜单 -->
                            <dd><a href="">移动模块</a></dd>
                            <dd><a href="">后台模版</a></dd>
                            <dd><a href="">电商平台</a></dd>
                        </dl>
                    </li>

                </ul>
                <ul class="layui-nav layui-layout-right">
                    <li class="layui-nav-item">
                        <a href="">控制台<span class="layui-badge">9</span></a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="">个人中心<span class="layui-badge-dot"></span></a>
                    </li>
                    <li class="layui-nav-item">
                        <a href=""><img src="http://t.cn/RCzsdCq" class="layui-nav-img">我</a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;">修改信息</a></dd>
                            <dd><a href="javascript:;">安全管理</a></dd>
                            <dd><a href="javascript:;">安全退出</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>

            <div class="layui-side layui-bg-black">
                <div class="layui-side-scroll">
                    <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                    <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                        <li class="layui-nav-item layui-nav-itemed">
                            <a class="" href="javascript:;">住户管理</a>
                            <dl class="layui-nav-child">
                                <dd><a href="javascript:;">住户列表</a></dd>
                                <dd><a href="javascript:;">学历分析</a></dd>
                                <dd><a href="javascript:;">年龄分析</a></dd>
                                <dd><a href="javascript:;">合同管理</a></dd>
                                <dd><a href="javascript:;">住户导出</a></dd>
                            </dl>
                        </li>
                        <li class="layui-nav-item">
                            <a href="javascript:;">人事管理</a>
                            <dl class="layui-nav-child">
                                <dd><a href="javascript:;">列表一</a></dd>
                                <dd><a href="javascript:;">列表二</a></dd>
                                <dd><a href="">超链接</a></dd>
                            </dl>
                        </li>
                        <li class="layui-nav-item">
                            <a href="javascript:;">车辆管理</a>
                            <dl class="layui-nav-child">
                                <dd><a href="javascript:;">列表一</a></dd>
                                <dd><a href="javascript:;">列表二</a></dd>
                                <dd><a href="">超链接</a></dd>
                            </dl>
                        </li>
                        <li class="layui-nav-item">
                            <a href="javascript:;">设备管理</a>
                            <dl class="layui-nav-child">
                                <dd><a href="javascript:;">列表一</a></dd>
                                <dd><a href="javascript:;">列表二</a></dd>
                                <dd><a href="">超链接</a></dd>
                            </dl>
                        </li>
                        <li class="layui-nav-item">
                            <a href="javascript:;">收费管理</a>
                            <dl class="layui-nav-child">
                                <dd><a href="javascript:;">列表一</a></dd>
                                <dd><a href="javascript:;">列表二</a></dd>
                                <dd><a href="">超链接</a></dd>
                            </dl>
                        </li>
                        <li class="layui-nav-item">
                            <a href="javascript:;">房产管理</a>
                            <dl class="layui-nav-child">
                                <dd><a href="javascript:;">列表一</a></dd>
                                <dd><a href="javascript:;">列表二</a></dd>
                                <dd><a href="">超链接</a></dd>
                            </dl>
                        </li>
                        <li class="layui-nav-item">
                            <a href="javascript:;">系统管理</a>
                            <dl class="layui-nav-child">
                                <dd><a href="javascript:;">列表一</a></dd>
                                <dd><a href="javascript:;">列表二</a></dd>
                                <dd><a href="">超链接</a></dd>
                            </dl>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="layui-body">
                <!-- 内容主体区域 -->
                <div style="padding: 15px;">内容主体区域</div>
            </div>

            <div class="layui-footer">
                <!-- 底部固定区域 -->
                © layui.com - 底部固定区域
            </div>
        </div>

    </body>
    <script>
        layui.use('element',function(){
            var element = layui.element;
        });
    </script>
</html>