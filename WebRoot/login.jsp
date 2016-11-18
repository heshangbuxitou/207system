<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录界面</title>
<link type="text/css"  href="${pageContext.request.contextPath }/css/interface.css" rel="stylesheet"/>
<link type="text/css" href="${pageContext.request.contextPath }/css/login.css" rel="stylesheet"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript">
  	function test(){
		var image = document.getElementsByTagName("img")[0];
		var myDate = new Date();
		image.src = "${pageContext.request.contextPath }/image.jsp?time="+myDate.getTime();
  	 }
</script>  
</head>

<body>
<div id="header">
<h1><a href="${pageContext.request.contextPath }/index.jsp">学生管理系统</a></h1>
    <div id="mincheng">
    <p><em><b>学生管理系统</b></em></p>
    </div>
    <ul>
       <font color="red">${msg }</font>
       <li><a href="${pageContext.request.contextPath }/index.jsp">首页</a></li>
       <li><a href="${pageContext.request.contextPath }/regist.jsp">注册</a></li>
       <li><a href="${pageContext.request.contextPath }/login.jsp">登录</a></li>
    </ul>
</div>
<div id="login">
 <h2>登录	(*为必填   not null不为空  min为最小)</h2>
 <form method="post" action="${pageContext.request.contextPath }/servlet/LoginServlet" >
       <dl>
          <dt>学生登录</dt>
          <dd>学  号：<input type="text" name="number" class="text"/><span>*</span></dd>
          <dd>密  码：<input type="password" name="password" class="text"/><span>*</span></dd>
          <dd>验证码:<input id="vali" type="text" name="valistr" class="code"/><img id="vali" alt="" onclick="test();" src="${pageContext.request.contextPath }/image.jsp"><input type="hidden" name="hidden" value="${sessionScope.srand }"/></dd>
          <dd><input type="submit" class="sumbit" name=“sumbit”/></dd>
       </dl>    
 </form>
 <div id="login_footer">
        
 
 </div>
</div>

<div id="footer">
  <p><span>由207制作</span></p>
</div>
</body>
</html>
