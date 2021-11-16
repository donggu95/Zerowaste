<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file = "/header.jsp" %>

	<div class="alert alert-info" role="alert">
		<h3 class="display-6">스토어</h3>
	</div>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="sid" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="spassword" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
				</form>
		</div>
	</div>
	
	
<%@ include file = "/footer.jsp" %>
</body>
</html>