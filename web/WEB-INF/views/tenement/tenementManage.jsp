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
                                <li class="layui-this">管理
                                    <i class="layui-icon layui-unselect layui-tab-close" style="display: none;">ဆ</i>
                                </li>
                            </ul>
                            <div class="layui-tab-content" >
                                <div class="layui-tab-item layui-show">
                                    <table class="layui-table">
                                        <thead>
                                            <tr>
                                                <th>选择</th>
                                                <th>编号</th>
                                                <th>用户名</th>
                                                <th>性别</th>
                                                <th>年龄</th>
                                                <th>学历</th>
                                                <th>邮箱</th>
                                                <th>手机</th>
                                                <th>租房信息</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:choose>
                                                <c:when test="${tenes.size()>0}">
                                                    <c:forEach items="${tenes}" var="tene">
                                                        <tr>
                                                            <td>
                                                                <input type="checkbox" name="ids" lay-skin="switch" lay-text="ON|OFF" checked>
                                                            </td>
                                                            <td>${tene.id}</td>
                                                            <td>${tene.tname}</td>
                                                            <td>${tene.gender==1?"男":"女"}</td>
                                                            <td>${tene.age}</td>
                                                            <td>${tene.education}</td>
                                                            <td>${tene.mail}</td>
                                                            <td>${tene.phone}</td>
                                                            <td>房间信息</td>
                                                            <td>
                                                                <button type="button" class="layui-btn-warm" data-id="${tene.id}">编辑</button>
                                                                <button type="button" class="layui-btn-danger" data-id="${tene.id}">删除</button>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </c:when>
                                                <c:otherwise>
                                                    <tr>
                                                        <td colspan="10" style="text-align: center;">无住户数据</td>
                                                    </tr>
                                                </c:otherwise>
                                            </c:choose>
                                        </tbody>
                                    </table>
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
        layui.use(["element"],function(){
            var element = layui.element;
        });

        //用不来的layui数据表格
//        layui.use(['element','table'],function(){
//            var element = layui.element;
//            var table = layui.table;
//
//            table.render({
//                elem: '#demo'
//                ,height: 450
//                ,url: 'tenementManage/query' //数据接口
//                ,page:true //开启分页
//                ,even:true
//                ,cols: [[ //表头
//                    {field: 'tenementId', title: '编号', width:80, sort: true, fixed: 'left'}
//                    ,{field: 'tname', title: '用户名', width:120}
//                    ,{field: 'gender', title: '性别', width:80, sort: true}
//                    ,{field: 'age', title: '年龄', width:80}
//                    ,{field: 'education', title: '学历', width: 100}
//                    ,{field: 'mail', title: '邮箱', width: 160}
//                    ,{field: 'phone', title: '手机', width: 140}
//                    ,{field: 'room', title: '租房信息', width: 160}
//                    ,{field: 'operate', title: '操作'}
//                ]]
//            });
//        });
    </script>
</html>