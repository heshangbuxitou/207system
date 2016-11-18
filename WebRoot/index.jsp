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
<title>主界面</title>
<link href="${pageContext.request.contextPath }/css/interface.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath }/css/huandong.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath }/css/index.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jq_scroll.js"></script>
<script type="text/javascript">
$(document).ready(function(){
        $("#scrollDiv").Scroll({line:1,speed:500,timer:3000,up:"but_up",down:"but_down"});
		
});
</script>
<style type="text/css">
h3,ul,li{margin:0;padding:0; list-style:none;}
.scrollbox{ width: 340px; margin: 0 auto; overflow: hidden; border: 1px solid #CFCFCF; padding: 10px; }
#scrollDiv{width:340px;height:359px; overflow:hidden;}/*这里的高度和超出隐藏是必须的*/
#scrollDiv li{height:90px; width:300px; padding:0 20px;background:url(ico-4.gif) no-repeat 10px 23px; overflow:hidden; vertical-align:bottom; zoom:1; border-bottom:#B7B7B7 dashed 1px;}
#scrollDiv li h3{ height:24px; padding-top:13px; font-size:14px; color:#353535; line-height:24px; width:300px;}
#scrollDiv li h3 a{color:#353535; text-decoration:none}#scrollDiv li h3 a:hover{ color:#F00}
#scrollDiv li div{ height:36px; width:300px; color:#416A7F; line-height:18px; overflow:hidden}
#scrollDiv li div a{ color:#416A7F; text-decoration:none}
.scroltit{ height:26px; line-height:26px; padding-bottom:4px; margin-bottom:4px;}
.scroltit h3{ width:100px; float:left;}
.scroltit .updown{float:right; width:32px; height:22px; margin-left:4px}
#but_up{ background:url(images/up.gif) no-repeat 0 0; text-indent:-9999px}
#but_down{ background:url(images/down.gif) no-repeat 0 0; text-indent:-9999px}
#n{margin:10px auto; width:920px; border:1px solid #CCC;font-size:12px; line-height:30px;}
#n a{ padding:0 4px; color:#333}
</style>
</head>

<body>
<div id="header">
<h1><a href="${pageContext.request.contextPath }/index.jsp">学生管理系统</a></h1>
    <div id="mincheng">
    <p><em><b>学生管理系统</b></em></p>
    </div>
    <ul>
	    <c:if test="${sessionScope.student==null }">
			欢迎光临,请登录！
		   <li><a href="${pageContext.request.contextPath }/index.jsp">首页</a></li>
	       <li><a href="${pageContext.request.contextPath }/regist.jsp">注册</a></li>
	       <li><a href="${pageContext.request.contextPath }/login.jsp">登录</a></li>
	    </c:if>
	    <c:if test="${sessionScope.student!=null && sessionScope.student.number == 'administer'}">
			登录成功，欢迎你${sessionScope.student.username}!
	       <li><a href="${pageContext.request.contextPath }/index.jsp">首页</a></li>	
	       <li><a href="${pageContext.request.contextPath }/servlet/InquireServlet">查询</a></li>
	       <li><a href="${pageContext.request.contextPath }/servlet/ModifyServlet?id=${sessionScope.student.id}">修改</a></li>
	       <li><a href="${pageContext.request.contextPath }/servlet/LogoutServlet">退出</a></li>
	     </c:if>
	     <c:if test="${sessionScope.student!=null && sessionScope.student.number!='administer'}">
			登录成功，欢迎你${sessionScope.student.username}!
	       <li><a href="${pageContext.request.contextPath }/index.jsp">首页</a></li>	
	       <li><a href="${pageContext.request.contextPath }/servlet/ModifyServlet?id=${sessionScope.student.id}">修改</a></li>
	       <li><a href="${pageContext.request.contextPath }/servlet/LogoutServlet">退出</a></li>
	     </c:if>
    </ul>
</div>

<div id="list">
 <h2>今日学校信息</h2>
 <div class="scrollbox">
    <div id="scrollDiv">
        <ul>
            <li><h3><a href="#" class="linktit">湖南商学院诚聘英才——麓山引才计划 </a></h3> <div>一、引进对象范围
1.院士、“万人计划领军人才”、“长江学者”特聘/讲座教授...</div></li>
            <li><h3><a href="#" class="linktit">竞争性谈判成交公告 </a></h3> <div>湖南商学院的贤德学生公寓10#栋整体维修改造竞争性谈判采购项目于 2016年05月26日 结束，现将成交结果公告如下.....</div></li>
            <li><h3><a href="#" class="linktit">湖南商学院窑塘学生公寓公告 </a></h3> <div>湖南商学院的窑塘学生公寓楼道监控及广播系统，政府采购编号... </div></li>
            <li><h3><a href="#" class="linktit">法学院：“麓山校友，企业家论坛” </a></h3> <div>法学院：何俊锋律师开讲第五十期“麓山校友，企业家论坛” ... </div></li>
            <li><h3><a href="#" class="linktit">计信学院举办2016届毕业生毕业典礼暨毕业晚会 </a></h3> <div>计信学院举办2016届毕业生毕业典礼暨毕业晚会 
... </div></li>
        </ul>
    </div>
    <div class="scroltit"><div class="updown" id="but_down">向上</div><div class="updown" id="but_up">向下</div></div>
</div>
</div>

<div id="user">
 <h2>学生近态</h2>
 <div style="overflow: hidden; position: relative; height: 114px;" id="news-container">
  <ul style="position: absolute; margin: 0pt; padding: 0pt; top: 0px;">
    <li style="margin: 0pt; padding: 0pt; height: 38px; display: list-item;">
      <div>日晚，由我校学生工作处大学生心理健康教育中心主办，公共管理学院、经济与贸... </div>
    </li>
    <li style="margin: 0pt; padding: 0pt; height: 38px; display: list-item;">
      <div> 根据学校和研究生院党总支部关于“两学一做”学习教育的整体安排和部署.... </div>
    </li>
    <li style="margin: 0pt; padding: 0pt; height: 38px; display: list-item;">
      <div> 湖南商学院组织部分师生认真学习习近平总书记在哲学社会科学工作座....</div>
    </li>
    <li style="margin: 0pt; padding: 0pt; height: 38px;">
      <div> 新华网长沙5月13日电 11日晚，辽宁芭蕾舞团走进湖南商学院，为现场... </div>
    </li>
  </ul>
</div>
</div>

<div id="pics">
 <h2>图片风展</h2>
<div id="pisc_hua">
 <ul>
  <li><a href="" target="_blank"><img src="${pageContext.request.contextPath }/image/01.jpg"></a></li>
  <li><a href="" target="_blank"><img src="${pageContext.request.contextPath }/image/02.jpg"></a></li>
  <li><a href="" target="_blank"><img src="${pageContext.request.contextPath }/image/03.jpg"></a></li>
  <li><a href="" target="_blank"><img src="${pageContext.request.contextPath }/image/04.jpg"></a></li>
  <li><a href="" target="_blank"><img src="${pageContext.request.contextPath }/image/05.jpg"></a></li>
  <li><a href="" target="_blank"><img src="${pageContext.request.contextPath }/image/06.jpg"></a></li>
  <li><a href="" target="_blank"><img src="${pageContext.request.contextPath }/image/07.jpg"></a></li>
  <li><a href="" target="_blank"><img src="${pageContext.request.contextPath }/image/08.jpg"></a></li>            
</ul>
</div>
</div>

<div id="footer">
  <p><span>由207制作</span></p>
</div>

</body>
</html>
