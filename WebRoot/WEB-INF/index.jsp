<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>主界面</title>
<link href="界面.css" rel="stylesheet" type="text/css"/>
<link href="主页.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<div id="header">
<h1><a href="界面.html">学生管理系统</a></h1>
    <div id="mincheng">
    <p><em><b>学生管理系统</b></em></p>
    </div>
    <ul>
       <li><a href="界面.html">首页</a></li>
       <li><a href="reigter.html">注册</a></li>
       <li><a href="登录.html">登录</a></li>
       <li><a href="###">查询</a></li>
       <li><a href="###">修改</a></li>
       <li><a href="###">退出</a></li>
    </ul>
</div>

<div id="list">
 <h2>今日学校信息</h2>
</div>

<div id="user">
 <h2>学生近态</h2>
</div>

<div id="pics">
 <h2>图片风展</h2>
</div>

<div id="footer">
  <p><span>由207制作</span></p>
</div>

</body>
</html>
