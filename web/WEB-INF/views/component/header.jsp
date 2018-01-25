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
    <link rel="stylesheet" href="//at.alicdn.com/t/font_545575_ptiiuir0h33di.css">
    <script src="assets/js/jquery-3.2.1.js"></script>
    <script src="assets/js/layui.js"></script>
</head>
<body class="layui-layout-body hp-green-theme">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">
            Love
        </div>
        <!-- 头部区域（可配合layui已有的水平导航） -->

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;"  class="hp-user-name">
                    <img src="assets/img/1.jpg" class="layui-circle-img"><span class="hp-kd">${userName }</span>
                </a>
                <dl class="layui-nav-child">
                    <dd>
                        <a href="">基本资料</a>
                    </dd>
                    <dd>
                        <a href="">邮件管理</a>
                    </dd>
                    <dd>
                        <a href="">消息管理</a>
                    </dd>
                    <dd>
                        <a href="">授权管理</a>
                    </dd>
                    <dd>
                        <a href="">安全设置</a>
                    </dd>
                    <dd>
                        <a href="">安全退出</a>
                    </dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="layui-side hp-left-menu">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="left-nav">
                <li class="layui-nav-item " jcx-parent-id="tenement"><!-- 选中layui-nav-itemed layui-this -->
                    <!-- 住户管理模块 -->
                    <a class="" href="javascript:;">住户管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="jcx-tab" jcx-href="tenementManage/query" jcx-id="tene-list" href="javascript:;">住户列表</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="tenementManage/eduAna" jcx-id="tene-edu" href="javascript:;">学历分析</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="tenementManage/ageAna" jcx-id="tene-age" href="javascript:;">年龄分析</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="tenementManage/teneExport" jcx-id="tene-export" href="javascript:;">住户导出</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="tenementManage/contractManage" jcx-id="tene-contract" href="javascript:;">合同管理</a>
                        </dd>
                    </dl>
                </li>
                <!-- 房产管理 -->
                <li class="layui-nav-item " jcx-parent-id="estate"><!-- 选中layui-nav-itemed layui-this -->
                    <a class="" href="javascript:;">房产管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="jcx-tab" jcx-href="estateManage/query" jcx-id="estate-list" href="javascript:;">房产列表</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="estateManage/estateAna" jcx-id="estate-ana" href="javascript:;">房产分析</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="estateManage/search" jcx-id="estate-search" href="javascript:;">房产查询</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="estateManage/export" jcx-id="estate-export" href="javascript:;">房产导出</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="estateManage/houseType" jcx-id="estate-houseType" href="javascript:;">户型图管理</a>
                        </dd>
                    </dl>
                </li>
                <!-- 设备管理 -->
                <li class="layui-nav-item " jcx-parent-id="device"><!-- 选中layui-nav-itemed layui-this -->
                    <a class="" href="javascript:;">设备管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="jcx-tab" jcx-href="deviceManage/query" jcx-id="device-list" href="javascript:;">设备列表</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="deviceManage/deviceAna" jcx-id="device-ana" href="javascript:;">设备分析</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="deviceManage/export" jcx-id="device-export" href="javascript:;">设备导出</a>
                        </dd>
                    </dl>
                </li>
                <!-- 人事管理 -->
                <li class="layui-nav-item " jcx-parent-id="employee"><!-- 选中layui-nav-itemed layui-this -->
                    <a class="" href="javascript:;">人事管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="jcx-tab" jcx-href="employeeManage/query" jcx-id="employee-list" href="javascript:;">员工列表</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="employeeManage/ana" jcx-id="employee-ana" href="javascript:;">员工分析</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="employeeManage/attendance" jcx-id="employee-attendance" href="javascript:;">考勤管理</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="employeeManage/export" jcx-id="employee-export" href="javascript:;">员工导出</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="employeeManage/contractManage" jcx-id="employee-contract" href="javascript:;">合同管理</a>
                        </dd>
                    </dl>
                </li>
                <!-- 收费管理 -->
                <li class="layui-nav-item " jcx-parent-id="toll"><!-- 选中layui-nav-itemed layui-this -->
                    <a class="" href="javascript:;">收费管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="jcx-tab" jcx-href="tollManage/query" jcx-id="toll-list" href="javascript:;">收费项目</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="tollManage/info" jcx-id="toll-info" href="javascript:;">缴费信息</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="tollManage/na" jcx-id="toll-ana" href="javascript:;">缴费分析</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="tollManage/export" jcx-id="toll-export" href="javascript:;">账单导出</a>
                        </dd>
                    </dl>
                </li>
                <!-- 车辆管理 -->
                <li class="layui-nav-item " jcx-parent-id="vehicle"><!-- 选中layui-nav-itemed layui-this -->
                    <a class="" href="javascript:;">车辆管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="jcx-tab" jcx-href="vehicleManage/query" jcx-id="vehicle-list" href="javascript:;">车辆列表</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="vehicleManage/ana" jcx-id="vehicle-ana" href="javascript:;">车辆分析</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="vehicleManage/export" jcx-id="vehicle-export" href="javascript:;">车辆导出</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="tenementManage/parkManage" jcx-id="vehicle-park" href="javascript:;">车位管理</a>
                        </dd>
                    </dl>
                </li>
                <!-- 系统管理 -->
                <li class="layui-nav-item " jcx-parent-id="admin"><!-- 选中layui-nav-itemed layui-this -->
                    <a class="" href="javascript:;">系统管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="jcx-tab" jcx-href="adminManage/query" jcx-id="admin-list" href="javascript:;">管理员列表</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="adminManage/authority" jcx-id="admin-authority" href="javascript:;">权限管理</a>
                        </dd>
                        <dd>
                            <a class="jcx-tab" jcx-href="adminManage/database" jcx-id="admin-database" href="javascript:;">数据库管理</a>
                        </dd>
                    </dl>
                </li>
                <!-- 示例页面 -->
                <li class="layui-nav-item">
                    <a href="javascript:;">示例页面</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a  target="_blank"   href="assets/pageDemo/login/login1.html" >登录页面</a>
                        </dd>
                        <dd>
                            <a  target="_blank"   href="assets/pageDemo/404.html" >404页面</a>
                        </dd>
                    </dl>
                </li>

            </ul>
        </div>
    </div>



    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © jcx-power by <span class="icon iconfont layui-jcx--link" jcx-url="http://www.layui.com">LayUI</span> & <span class="icon iconfont layui-jcx--link" jcx-url="http://www.iconfont.cn">阿里巴巴矢量图标库</span>
    </div>
</div>
<script>
    // 配置
//    layui.config({
//        base: 'assets/hpModules/' // 扩展模块目录
//    }).extend({ // 模块别名
//        hpTab: 'hpTab/hpTab',
//        hpRightMenu: 'hpRightMenu/hpRightMenu',
//        hpFormAll: 'hpFormAll/hpFormAll'
//    });
    //JavaScript代码区域

    //使用我自己写的模块
    layui.config({
       base:'assets/jcxModules/'
    });

    layui.use(['element', 'carousel','jcxTab'], function() {
        var element = layui.element;
        var carousel = layui.carousel; //轮播
        var jcxTab = layui.jcxTab;
        var $ = layui.$;

        $(".layui-jcx--link").click(function(){
            open($(this).attr("jcx-url"));
        });
        $(".layui-jcx--link").mouseover(function(){
            $(this).css({color:'forestgreen',cursor:'pointer'});
        });


//        var hpTab = layui.hpTab;
//        var hpRightMenu = layui.hpRightMenu;
//        var hpTheme=layui.hpTheme;
        $ = layui.jquery;
        // 初始化主题
//        hpTheme.init();

        jcxTab.tabMonitor();
        //初始化轮播

        carousel.render({
            elem: '#test1',
            width: '100%', //设置容器宽度
            interval: 1500,
            height: '500px',
            arrow: 'none', //不显示箭头
            anim: 'fade', //切换动画方式
        });

        // 初始化 动态tab
//        hpTab.init();
        // 右键tab菜单
//        hpRightMenu.init();

        //监听左侧导航点击事件
        element.on("nav(left-nav)",function(ele){
           console.log(ele);
        });
    });
</script>
</body>
</html>