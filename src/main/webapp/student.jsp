<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/lry-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询学生</title>
</head>
<body>
	<h1>JSTL</h1>
	<!-- JSTL作用是处理数据，核心标签库(C标签)标签共有13个，功能上分4类:
		 1.表达式控制标签:out、set、remove、catch
		 2.流程控制标签:if、choose、when、otherwise
		 3.循环标签:forEach、forTokens
		 4.URL操作标签:import、url、redirect-->
	<!-- if -->
	<p>
		<c:if test="${stu.sex=='M'}">男</c:if>
		<c:if test="${stu.sex=='F'}">女</c:if>
	</p>
	<!-- choose -->
	<p>
		<c:choose>
			<c:when test="${stu.sex=='M' }">男</c:when>
			<c:otherwise>女</c:otherwise>
		</c:choose>
	</p>
	<!-- forEach -->
	<p>
		<c:forEach items="${stu.interests }" var="i">${i }&nbsp</c:forEach>
	</p>
	<!-- 自定义标签 -->
	<p>
		<s:sysdate format="yyyy年MM月dd日"/>
	</p>
	<h1>EL</h1>
	<!-- EL作用是表达，可以获取4个内置对象中的数据(page、request、session、application)，
	或自定义对象中的数据，或数组、集合容器中的数据，书写格式：${表达式} -->
	<!-- 1.获取Bean属性 -->
	<!-- request.getAttribute("stu").getAge -->
	<p>年龄:${stu["age"] }</p>
	<p>课程:${stu.course.courseId }</p>
	<!-- 2.EL会按照顺序依次从4个内置对象中取值，若想从某一个对象中取值:
		sessionScope.stu.sex
		requestScope.stu.sex -->
	<p>性别:${requestScope.stu.sex }</p>
	<!-- 3.进行运算 -->
	<p>年龄+3:${stu.age+3 }</p>
	<p>年龄范围:${stu.age>19 && stu.age<30 }</p>
	<!-- 判断是否为空 -->
	<p>判空:${empty stu }</p>
	<p>参数:${param.user }</p>
</body>
</html>