<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<title>회원 가입</title>
<script type="text/javascript">
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		if (!document.newMember.password.value) {
			alert("패스워드를 입력하세요.");
			return false;
		}
	}
</script>
</head>
<body>
	<jsp:include page="/header.jsp" />
<div class="alert alert-secondary" role="alert">
			<h1 class="display-3">회원 가입</h1>
</div>	

	<div class="container">
		<form name="newMember" class="form-horizontal"  action="joinAction.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 ">아이디</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" placeholder="아이디를 입력하세요." >
				</div>
			</div>
			<br>
			<div class="form-group  row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input name="password" type="password" class="form-control" placeholder="비밀번호를 입력하세요." >
				</div>
			</div>
			<br>
			<div class="form-group  row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" placeholder="이름" >
				</div>
			</div>
			<br>
			<div class="form-group  row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-10">
					<input name="gender" type="radio" value="남" />남 
					<input name="gender" type="radio" value="여" />여
				</div>
			</div>
			<br>
			<div class="form-group  row ">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-5">
					<input type="text" name="email" maxlength="50"  placeholder="이메일을 입력하세요." >
				</div>				
			</div>
			<br>
			<div class="form-group  row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary " value="등록 " > 
					<input type="reset" class="btn btn-primary " value="취소 " onclick="reset()" >
				</div>
			</div>
		</form>
	</div>
</body>
</html>