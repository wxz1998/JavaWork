<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="<%=basePath%>">

<title>My JSP 'MyCompute.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<style type="text/css">
div {
	width: 215px;
	height: 330px;
	border: 2px solid black;
	background-image: url(c1.jpg);
}

#aniu {
	width: 35px;
	height: 25px;
}
</style>
<body>
	<div align="center">
		<h1>My Computer</h1>
		<font size="4">请输入第一个数：</font><br /> <input type="text" id="num1"
			style="width: 150;" /><br /> <font size="4">请输入第二个数：</font><br /> <input
			type="text" id="num2" style="width: 150;" /> <br /> <font size="4">请选择运算方式：</font><br />
		<table>
			<tr>
				<td><input type="button" value="+" id="aniu" onclick="jia();" /></td>
				<td><input type="button" value="-" id="aniu" onclick="jian();" /></td>
				<td><input type="button" value="*" id="aniu" onclick="cheng();" /></td>
				<td><input type="button" value="/" id="aniu" onclick="chu();" /></td>
			</tr>
		</table>
		<font size="4">计算结果为：</font><br /> <input type="text" id="result"
			style="width: 150;" /> <br />
	</div>
</body>
<script type="text/javascript">
	function jia() {
		var n1 = document.getElementById("num1");
		var n2 = document.getElementById("num2");
		var nv1 = n1.value;
		var nv2 = n2.value;
		var rv = parseInt(nv1) + parseInt(nv2);
		var result = document.getElementById("result");
		result.value = rv;
	}
	function jian() {
		var n1 = document.getElementById("num1");
		var n2 = document.getElementById("num2");
		var nv1 = n1.value;
		var nv2 = n2.value;
		var rv = parseInt(nv1) - parseInt(nv2);
		var result = document.getElementById("result");
		result.value = rv;
	}
	function cheng() {
		var n1 = document.getElementById("num1");
		var n2 = document.getElementById("num2");
		var nv1 = n1.value;
		var nv2 = n2.value;
		var rv = parseInt(nv1) * parseInt(nv2);
		var result = document.getElementById("result");
		result.value = rv;
	}
	function chu() {
		var n1 = document.getElementById("num1");
		var n2 = document.getElementById("num2");
		var nv1 = n1.value;
		var nv2 = n2.value;
		var rv = parseInt(nv1) / parseInt(nv2);
		var result = document.getElementById("result");
		result.value = rv;
	}
</script>
</html>