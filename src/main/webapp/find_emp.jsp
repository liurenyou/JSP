<%@page import="entity.Emp"%>
<%@page import="java.util.List"%>
<%@page import="dao.EmpDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询员工</title>
</head>
<body>
	<table border="1" cellspacing="0" width="40%">
		<tr>
			<td>编号</td>
			<td>姓名</td>
			<td>职位</td>
			<td>薪资</td>
		</tr>
		<%
			EmpDao dao = new EmpDao();
			List<Emp> list = dao.findAll();
			for(Emp e : list) {
		%>
			<tr>
				<td><%=e.getEmpno() %></td>
				<td><%=e.getEname() %></td>
				<td><%=e.getJob() %></td>
				<td><%=e.getSal() %></td>
			</tr>
		<%		
			};
		%>
	</table>
</body>
</html>