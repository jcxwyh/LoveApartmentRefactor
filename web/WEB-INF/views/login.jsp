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
            <form class="lay-form login-form" action="login" method="post">
                <div class="layui-row">
                    <div class="layui-col-md2 layui-col-md-offset9 layui-col-sm4 layui-col-sm-offset8 to-center">
                        <div class="layui-form-item">
                            <input type="text" name="username" required placeholder="用户名" class="layui-input"/>
                        </div>
                        <div class="layui-form-item">
                            <input type="password" name="pwd" required placeholder="密码" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md1 layui-col-md-offset9 layui-col-sm2 layui-col-sm-offset8 layui-col-xs6" style="display:inline">
                        <div class="layui-form-item">
                            <input type="text" class="layui-input vali-input" placeholder="验证码"/>
                        </div>
                    </div>
                    <div class="layui-col-md1 layui-col-sm2 layui-col-xs6" style="display:inline">
                        <div class="layui-form-item">
                            <label class="layui-form-label validate-code" style="text-align: center">&nbsp;</label>
                            <button type="button" class="layui-btn layui-btn-primary" style="border:0;background-color: rgba(0,0,0,0);position:absolute;margin-left:-14px;z-index:-1000;"><i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop vali-i" style="font-size: 25px;"></i></button>
                        </div>
                    </div>
                </div>
                <div class="layui-row">
                    <div class="layui-col-md2 layui-col-md-offset9 layui-col-sm4 layui-col-sm-offset8">
                        <div class="layui-form-item">
                            <button class="layui-btn login-btn layui-btn-fluid ">登录</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </body>
    <script>
        var colorArr=[1,2,3,4,5,6,7,8,9,0,'a','b','c','d','e','f'];
        var valiCodeArr=["1","2","3","4","5","6","7","8","9","0","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","Q","W","E","R","T","Y","U","I","O","P","S","Z","X","C","V","B","N","M","D","F","G","H","J","K","L"];
        var tag = ['b','i','small','big',''];
        var valiCode="";
        setInterval(function(){
            var color="#"+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)];
            $(".login-btn").css({backgroundColor:color});
        },300);
        $(".validate-code").on("click",function(){
            $(".vali-i").html("");
            var color="#"+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)]+colorArr[Math.round(Math.random()*16)];
            var codes="";
            valiCode="";
            for(var i=0;i<5;i++){
                var newTagName = tag[Math.floor(Math.random()*tag.length)];
                var newCode = valiCodeArr[Math.floor(Math.random()*valiCodeArr.length)];
                valiCode+=newCode;
                if(newTagName){
                    codes+="<"+newTagName+">"+newCode+"</"+newTagName+">"
                }else{
                    codes+=newCode;
                }
            }
            $(this).css("color",color);
            $(this).html(codes);
        });
        $(".validate-code").click();


        $(".vali-input").on("blur",function(){
            if($(this).val().toLowerCase()===valiCode.toLowerCase()){
                $(".vali-i").addClass("vali-success");
                $(".vali-i").removeClass("vali-error");
                $(".vali-i").html("&#xe618;");
            }else{
                $(".vali-i").removeClass("vali-success");
                $(".vali-i").addClass("vali-error");
                $(".vali-i").html("&#x1006;");
            }
        });
        $(".vali-input").on("focus",function () {
            $(".vali-i").removeClass("vali-error");
            $(".vali-i").removeClass("vali-success");
            $(".vali-i").html("&#xe63d;");
        });


        $(".login-form").submit(function(){
            return $(".vali-input").val().toLowerCase()===valiCode.toLowerCase()?true:false;
        });
    </script>
</html>