<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="sid" />
<jsp:setProperty name="user" property="spassword" />
<jsp:setProperty name="user" property="sname" />
<jsp:setProperty name="user" property="sgender" />
<jsp:setProperty name="user" property="semail" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if (user.getSid() == null || user.getSpassword() == null || user.getSname() == null || user.getSgender() == null
			|| user.getSemail() == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
	} else {
		UserDAO userDAO = new UserDAO();
		int result = userDAO.join(user);
		if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 존재하는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
	}
	%>


</body>
</html>