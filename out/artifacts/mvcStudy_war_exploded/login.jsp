<%--
  Created by IntelliJ IDEA.
  User: wuyan
  Date: 2017/11/7
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: wuyan
  Date: 2017/11/7
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script type="text/javascript" src="js/jquery-2.1.3.js"></script>
    <script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>Insert title here</title>
    <script type="text/javascript">
        function ajaxTest(){
            $.ajax({
                data:"name="+$("#name").val(),
                type:"GET",
                dataType: 'json',
                url:"/login/welcome",
                error:function(data){
                    alert("出错了！！:"+data.msg);
                },
                success:function(data){
                    alert("success:"+data.msg);
                    $("#result").html(data.msg) ;
                }
            });
        }
    </script>
</head>
<body>
<form action="/login/welcome">
    <input type="text" name="name" id="name"/>
    <input type="submit" value="登录" onclick="ajaxTest();"/>
</form>

<div id="result"></div>
</body>
</html>