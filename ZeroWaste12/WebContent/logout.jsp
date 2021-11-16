<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "/header.jsp" %>
	<div class="alert alert-info" role="alert">
		<h3 class="display-6">스토어</h3>
	</div>    
<%
	
session.invalidate();

	String str ="<p align = center><br>로그아웃 완료<br><br>";
	str += "<a href='./login.Check.jsp'><button>로그인하기</button></a></p>";
	out.print(str);


%>

	
<%@ include file = "/footer.jsp" %>