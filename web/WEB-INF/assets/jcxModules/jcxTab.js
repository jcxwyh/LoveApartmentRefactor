/*
    author:jcx
    左侧菜单栏的点击事件监听，获取属性定位到其它页面

 */

layui.define(function(exports){
    var $ = layui.$;
    var jcxTab = {
        tabMonitor:function(){
            $(".jcx-tab").on("click",function(){
                var thisTab = $(this);
                var href = thisTab.attr("jcx-href");
                var title = thisTab.html();
                var jcxId = thisTab.attr("jcx-id");
                var parentId = thisTab.parent().parent().parent().attr("jcx-parent-id");
                window.location=href+"?title="+title+"&jcxId="+jcxId+"&parentId="+parentId;
            });
        }
    }
    exports("jcxTab",jcxTab);
});