<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "/header.jsp" %>
	<div class="alert alert-info" role="alert">
		<h3 class="display-6">스토어 목록</h3>
	</div>
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="/resource/css/signin.css" rel="stylesheet">
</head>
 <body class="text-center">
    <form class="form-signin" action="loginCheck.jsp" method="post">
  <h1 class="h3 mb-3 font-weight-normal">로그인</h1>
<label for="inputEmail" class="sr-only">아이디</label>
  <input type="text" id="inputEmail" name="id" class="form-control" placeholder="아이디" required autofocus>
  <label for="inputPassword" class="sr-only">비밀번호</label>
  <input type="password" id="inputPassword" name="pass" class="form-control" placeholder="비밀번호" required>
  

  <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
</form>
</body>
</html>

	
<%@ include file = "/footer.jsp" %>

</body>
</html>