<%@page import="dao.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">고객 목록</h1>
		</div>
	</div>

	<div class="container">
		<div class="row" align="center">
		<table class="table table-striped" style="text-align: center; border; 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">아이디</th>
						<th style="background-color: #eeeeee; text-align: center;">이름</th>
						<th style="background-color: #eeeeee; text-align: center;">이메일</th>
						<th style="background-color: #eeeeee; text-align: center;">비밀번호</th>
					</tr>
					<%
		ArrayList<UserObj> members = (new UserDAO()).getList();
	%>
			<%
				for (UserObj member : members) {
			%>
			<tr>
			<td><%=member.getSid()%></td>
			<td><%=member.getSname()%></td>
			<td><%=member.getSemail()%></td>
			<td><%=member.getSpassword()%></td>
			</tr>

			<%
				}
			%>
				</thead>

			</table>
							
	
		</div>
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>