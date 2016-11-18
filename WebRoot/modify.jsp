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
<link type="text/css"  href="${pageContext.request.contextPath }/css/interface.css" rel="stylesheet"/>
<link type="text/css" href="${pageContext.request.contextPath }/css/modify.css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script type="text/javascript">
$(function (){
var ok1=true;
var ok2=true;
var ok3=true;
var ok4=true;
$('input[name="password"]').focus(function(){
		if($(this).val().length<6&&$(this).val()==' '){		
			 $ok1=false;
		$(this).next().text('notnull,min6').removeClass('state1').addClass('state2');}								  
										 }).blur(function(){
		if($(this).val().length>=6&&$(this).val()!=' '){
			$(this).next().text('success').removeClass('state1').addClass('state3');
                        ok1=true;
			}	
		else{
			if($('span').hasClass('state3')){
			        $(this).next().text('notnull,min6').removeClass('state3').addClass('state2');
				}
			else{
			       $(this).next().text('notnull,min6').removeClass('state1').addClass('state2');
				}
			ok1=false;
			}								 
										 });
	 $('input[name="classes"]').focus(function(){
		if($(this).val().length<6&&$(this).val()==' '){		
			 ok2=false;
		$(this).next().text('notnull,min6').removeClass('state1').addClass('state2');}								  
										 }).blur(function(){
		if($(this).val().length>=6&&$(this).val()!=' '){
			$(this).next().text('success').removeClass('state1').addClass('state3');
                        ok2=true;
			}	
		else{
			if($('span').hasClass('state3')){
			        $(this).next().text('notnull,min6').removeClass('state3').addClass('state2');
				}
			else{
			       $(this).next().text('notnull,min6').removeClass('state1').addClass('state2');
				}
			ok2=false;
			}								 
				});
$('input[name="age"]').focus(function(){
		if($(this).val().length<2&&$(this).val()==' '){		
			 ok3=false;
		$(this).next().text('notnull,min2').removeClass('state1').addClass('state2');}								  
										 }).blur(function(){
		if($(this).val().length>=2&&$(this).val()!=' '){
			$(this).next().text('success').removeClass('state1').addClass('state3');
                        ok3=true;
			}	
		else{
			if($('span').hasClass('state3')){
			        $(this).next().text('notnull,min2').removeClass('state3').addClass('state2');
				}
			else{
			       $(this).next().text('notnull,min2').removeClass('state1').addClass('state2');
				}
			ok3=false;
			}								 
				});
$('input[name="course"]').focus(function(){
	if($(this).val().length<2&&$(this).val()==' '){		
		 ok4=false;
	$(this).next().text('notnull,min2').removeClass('state1').addClass('state2');}								  
									 }).blur(function(){
	if($(this).val().length>=2&&$(this).val()!=' '){
		$(this).next().text('success').removeClass('state1').addClass('state3');
                    ok4=true;
		}	
	else{
		if($('span').hasClass('state3')){
		        $(this).next().text('notnull,min2').removeClass('state3').addClass('state2');
			}
		else{
		       $(this).next().text('notnull,min2').removeClass('state1').addClass('state2');
			}
		ok4=false;
		}								 
			});
$('form').submit(function (){	  
   if(ok1&&ok2&&ok3&&ok4){
	   return true;
	   }	
	 else{ 
		alert('please write right');
	   return false; 
		 }  
			});

										 

});

</script>
<title>修改</title>
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
	   <li><a href="${pageContext.request.contextPath }/servlet/ModifyServlet?id=${sessionScope.student.id}">修改</a></li>
	   <li><a href="${pageContext.request.contextPath }/servlet/LogoutServlet">退出</a></li>
    </ul>
</div>
<div id="xiugai">
<h2>修改</h2>
  <form  id="ban" method="post" action="${pageContext.request.contextPath }/servlet/UpdateServlet?id=${requestScope.student2.id }">
    <dl>
         <dt>学生请谨慎修改</dt>
         <dd>学生名 :<input type="text" name="username" class="text" disabled="disabled" value="${requestScope.student2.username }"/><span>不能修改</span></dd>
         <dd>密　 码:<input type="password" name="password" class="text" value="${requestScope.student2.password }"/><span>*</span></dd>
         <dd>学　 号:<input type="text" name="number" class="text" disabled="disabled" value="${requestScope.student2.number }"/><span>不能修改</span></dd>
         <dd>性  　  别:<input type="radio" name="sex" value="男" <c:if test="${requestScope.student2.sex=='男' }"> checked="checked" </c:if> />男<input type="radio" <c:if test="${requestScope.student2.sex=='女' }"> checked="checked" </c:if> value="女" name="sex"/>女</dd>
         <dd>班　级 :<input type="text" name="classes" class="text" value="${requestScope.student2.classes }"/><span>*</span></dd>
         <dd>年    龄：<input type="text" name="age" class="text" value="${requestScope.student2.age }"/><span>*</span></dd>
         <dd>课    程:<input type="text" name="course" class="text" value="${requestScope.student2.course }"/><span>*</span></dd>
         <dd>班 主 任：
         <select name="teacher">
         <option value="龙睿" <c:if test="${requestScope.student2.teacher=='龙睿' }"> selected="selected" </c:if> >龙睿</option>
         <option value="朱勇" <c:if test="${requestScope.student2.teacher=='朱勇' }"> selected="selected" </c:if> >朱勇</option>
         <option value="伍祚名" <c:if test="${requestScope.student2.teacher=='伍祚名' }"> selected="selected" </c:if> >伍祚名</option>
         <option value="李新宇" <c:if test="${requestScope.student2.teacher=='李新宇' }"> selected="selected" </c:if> >李新宇</option>
         <option value="邓纬垠" <c:if test="${requestScope.student2.teacher=='邓纬垠' }"> selected="selected" </c:if> >邓伟垠</option>
         <option value="谭检权" <c:if test="${requestScope.student2.teacher=='谭检权' }"> selected="selected" </c:if> >谭检权</option>
         </select>
         </dd>
         <dd>学   院:
         <select name="college">
         <option value="会计学院" <c:if test="${requestScope.student2.college=='会计学院' }"> selected="selected" </c:if> >会计学院</option>
         <option value="艺术学院" <c:if test="${requestScope.student2.college=='艺术学院' }"> selected="selected" </c:if> >艺术学院</option>
         <option value="财政学院" <c:if test="${requestScope.student2.college=='财政学院' }"> selected="selected" </c:if> >财政学院</option>
         <option value="法学院" <c:if test="${requestScope.student2.college=='法学院' }"> selected="selected" </c:if> >法学院</option>
         <option value="文学院" <c:if test="${requestScope.student2.college=='文学院' }"> selected="selected" </c:if> >文学院</option>
         <option value="计信院" <c:if test="${requestScope.student2.college=='计信院' }"> selected="selected" </c:if> >计信院</option>
         </select>
         </dd>
         <dd>验证码:<input id="vali" type="text" name="valistr" class="code"/><img id="vali" alt="" onclick="test();" src="${pageContext.request.contextPath }/image.jsp"></dd>
         <dd><input type="submit"  name="sumbit" class="sumbit" value="修改"/></dd>
    </dl>
    </form>
</div>
<div id="footer">
  <p><span>由207制作</span></p>
</div>
</body>
</html>