<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册页面</title>
<link href="${pageContext.request.contextPath }/css/interface.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath }/css/reigter.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/regist.js"></script>
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

<div id="content">
    <h2>学生注册 (*为必填   not null不为空  min为最小)</h2>
    <form method="post" action="${pageContext.request.contextPath }/servlet/RegistServlet">
    <dl>
         <dt>学生需谨慎填写</dt>
         <dd>学生名 :<input type="text" name="username" class="text"/><span>*</span></dd>
         <dd>密　 码:<input type="password" name="password" class="text"/><span>*</span></dd>
         <dd>学　 号:<input type="text" name="number" class="text"/><span>*</span></dd>
         <dd>性  　  别:<input type="radio" value="男" checked="checked" name="sex"/>男<input type="radio" value="女" name="sex"/>女</dd>
         <dd>班　级 :<input type="text" name="classes" class="text"/><span>*</span></dd>
         <dd>年    龄:<input type="text" name="age" class="text"/><span>*</span></dd>
         <dd>课    程:<input type="text" name="course" class="text"/><span>*</span></dd>
         <dd>班 主 任：
         <select name="teacher">
         <option value="龙睿">龙睿</option>
         <option value="朱勇">朱勇</option>
         <option value="伍祚名">伍祚名</option>
         <option value="李新宇">李新宇</option>
         <option value="邓纬垠">邓纬垠</option>
         <option value="谭检权">谭检权</option>
         </select>
         </dd>
         <dd>学   院:
         <select name="college">
         <option value="会计学院">会计学院</option>
         <option value="艺术学院">艺术学院</option>
         <option value="财政学院">财政学院</option>
         <option value="法学院">法学院</option>
         <option value="文学院">文学院</option>
         <option value="计信院">计信院</option>
         </select>
         </dd>
         <dd>验证码:<input id="vali" type="text" name="valistr" class="code"/><img id="vali" alt="" onclick="test();" src="${pageContext.request.contextPath }/image.jsp"></dd>
         <dd><input type="submit" class="sumbit" value="注册"/></dd>
    </dl>
    </form>

</div>
 
<div id="footer">
  <p><span>由207制作</span></p>
</div>

</body>
</html>

