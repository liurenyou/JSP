<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>第一个JSP</title>
</head>
<body>
		<!-- 1.jsp声明:声明成员或方法 -->
		<%!
				public double lf(double d) {
				return d*d*d;
			}
		%>
		<ul>
				<!-- 2.jsp脚本:完整的Java代码段 -->
				<%
						for(int i=0;i<10;i++) {
				%>
						<!-- 3.jsp表达式:要输出的变量 -->
						<li><%=lf(Math.random()) %></li>
				<%
						}
				%>
		</ul>
		<!-- 4.引入一个jsp，相当于将此jsp的内容复制到此处 -->
		<%@include file="date.jsp" %>
</body>
</html>