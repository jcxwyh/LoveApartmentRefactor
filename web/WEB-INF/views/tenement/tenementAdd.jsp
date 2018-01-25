<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>住户管理</title>
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

        <!-- 一个Tab -->
        <div class="layui-fluid">
            <div class="layui-row">
                <div class="layui-col-md12">
                    <div class="layui-tab" lay-allowClose="true" style="border:1px solid #c0c0c0">
                        <ul class="layui-tab-title" >
                            <li class="layui-this">添加
                                <i class="layui-icon layui-unselect layui-tab-close" style="display: none;">ဆ</i>
                            </li>
                        </ul>
                        <div class="layui-tab-content" >
                            <div class="layui-tab-item layui-show">
                                <div class="row">
                                    <div class="layui-col-md6">
                                        <form class="layui-form layui-form-pane" action="tenementManage/add" method="post" enctype="multipart/form-data">
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">用户名</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="title" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                                                </div>
                                            </div>
                                            <div class="layui-form-item" pane>
                                                <label class="layui-form-label">性别</label>
                                                <div class="layui-input-block">
                                                    <input type="radio" name="gender" value="1" title="男">
                                                    <input type="radio" name="gender" value="0" title="女" checked>
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">年龄</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="age" required  lay-verify="required" placeholder="请输入年龄" autocomplete="off" class="layui-input">
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">身份证号</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="idCardNo" required  lay-verify="required" placeholder="请输入身份证号" autocomplete="off" class="layui-input">
                                                </div>
                                            </div>
                                            <div class="layui-form-item" pane>
                                                <label class="layui-form-label">学历</label>
                                                <div class="layui-input-block" pane>
                                                    <select name="education" lay-verify="required">
                                                        <option value="保密"></option>
                                                        <option value="高中以下">高中以下</option>
                                                        <option value="高中">高中</option>
                                                        <option value="专科">专科</option>
                                                        <option value="本科">本科</option>
                                                        <option value="硕士">硕士</option>
                                                        <option value="博士">博士</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">手机</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="phone" required placeholder="请输入手机" autocomplete="off" class="layui-input">
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <label class="layui-form-label">邮箱</label>
                                                <div class="layui-input-block">
                                                    <input type="text" name="mail" required placeholder="请输入邮箱" autocomplete="off" class="layui-input">
                                                </div>
                                            </div>

                                            <div class="layui-form-item">
                                                <div class="layui-btn-group">
                                                    <button type="submit" class="layui-btn layui-btn-primary layui-btn-fluid">添加</button>
                                                    <button type="reset" class="layui-btn layui-btn-warm layui-btn-fluid">重置</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="layui-col-md6">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
<script>
    layui.use(["element","form"],function(){
        var element = layui.element;
        var form = layui.form;
    });
</script>
</html>