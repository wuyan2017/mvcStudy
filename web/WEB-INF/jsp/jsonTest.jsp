<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SpringMVC和 json 交互</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js" ></script>
</head>
<script type="text/javascript">
	var dataJson = {
			'username':'Bob',
			'sex':'男'
	};
	function requestJson(){
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/requestJson",
			//指定数据格式为 json
			contentType:"application/json;charset=UTF-8",
			data:JSON.stringify(dataJson),
			dataType:"json",
			success:function(data){
				console.log(data.username);
				console.log(data.sex);
			}
		});
	}
	
	function requestKeyValue(){
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/requestKeyValue",
			//请求是key/value这里不需要指定contentType，因为默认就 是key/value类型
	        //数据格式是key/value，商品信息
			//指定数据格式为 json
			data:"username=Bob&sex=男",
			success:function(data){
				console.log(data.username);
				console.log(data.sex);
			}
		});
	}
	
	
	
</script>
<body>
	<button onclick="requestJson()" value="请求是json,返回json">请求是json,返回json</button>
	<button onclick="requestKeyValue()" value="请求是key/value,返回json">请求是key/value,返回json</button>
	
</body>
</html>