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
                <li class="layui-nav-item">
                    <a href="javascript:;">扩展组件</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="hp-tab-add" hp-href="assets/hpDemo/hpTab.html" href="javascript:;" >动态选项卡</a>
                        </dd>
                        <dd>
                            <a class="hp-tab-add" hp-href="assets/hpDemo/hpRightMenu.html" href="javascript:;">右键菜单项</a>
                        </dd>
                        <dd>
                            <a class="hp-tab-add" hp-href="assets/hpDemo/hpLayedit.html"  href="javascript:;">多图编辑器</a>
                        </dd>
                        <dd>
                            <a class="hp-tab-add" hp-href="assets/hpDemo/hpFormAll.html"  href="javascript:;">表单全屏层</a>
                        </dd>
                        <dd>
                            <a class="hp-tab-add" hp-href="assets/hpDemo/hpWindow.html"  >弹出窗口层</a>
                        </dd>
                    </dl>
                </li>

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
                <li class="layui-nav-item">
                    <a href="javascript:;">数据列表</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="hp-tab-add" hp-href="assets/pageDemo/list/dataList.html" href="javascript:;" >基础列表</a>
                        </dd>
                        <dd>
                            <a class="hp-tab-add" hp-href="assets/pageDemo/list/imgList.html" href="javascript:;" >图文列表</a>
                        </dd>
                        <dd>
                            <a class="hp-tab-add" hp-href="assets/pageDemo/list/formList.html" href="javascript:;" >表单列表</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">数据分析</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="hp-tab-add" hp-href="assets/pageDemo/echarts/bar.html" href="javascript:;" >柱状图</a>
                        </dd>
                        <dd>
                            <a class="hp-tab-add" hp-href="assets/pageDemo/echarts/pie.html" href="javascript:;" >饼图</a>
                        </dd>

                    </dl>
                </li>



                <li class="layui-nav-item">
                    <a  target="_blank"   href="https://github.com/hpit-BAT">github组织</a>
                </li>
                <li class="layui-nav-item">
                    <a  target="_blank"   href="https://hpit-bat.github.io/hpit-BAT-home">黑科技</a>
                </li>
            </ul>
        </div>
    </div>



    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © hp-layui-version-1.0
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