<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查询界面</title>
<link href="${pageContext.request.contextPath }/css/interface.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/inquire.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header">
<h1><a href="${pageContext.request.contextPath }/index.jsp">学生管理系统</a></h1>
    <div id="mincheng">
    <p><em><b>学生管理系统</b></em></p>
    </div>
    <ul>
       <li><a href="${pageContext.request.contextPath }/index.jsp">首页</a></li>
	   <li><a href="${pageContext.request.contextPath }/inquire.jsp">查询</a></li>
	   <li><a href="${pageContext.request.contextPath }/servlet/ModifyServlet?id=${sessionScope.student.id}">修改</a></li>
	   <li><a href="${pageContext.request.contextPath }/servlet/LogoutServlet">退出</a></li>
    </ul>
</div>
<div id="content_box" style="background:#969696">
<h2>查询</h2>
<p><span>查询结果如下：</span></p>
<div id="tets" cols="50" rows="20" style="background:white;">
	<table border="1" width="100%">
  		<tr>
  			<th>学生姓名</th>
  			<th>学生学号</th>
  			<th>修改</th>
  			<th>删除</th>
  		</tr>
  		<c:forEach items="${requestScope.list}" var="stu">
	  		<tr>
	  			<td><c:out value="${stu.username }"></c:out> </td>
	  			<td><c:out value="${stu.number }"></c:out>  </td>
	  			<td><a href="${pageContext.request.contextPath }/servlet/ModifyServlet?id=${stu.id }">修改</a></td>
	  			<td><a href="${pageContext.request.contextPath }/servlet/DeleteServlet?id=${stu.id }">删除</a></td>
	  		</tr>
  		</c:forEach>
  	</table>
</div>

</div>

<div id="footer">
  <p><span>由207制作</span></p>
</div>



</body>
</html>