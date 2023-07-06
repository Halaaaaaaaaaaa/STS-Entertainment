<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 내역</title>
<link rel="shortcut icon" href="img/favicon.png">
<link rel="stylesheet" type="text/css" href="css/member/cs.css" />
<script type="text/javascript" src="js/member/cs.js"></script>



</head>
<body>
	<div id="cs_detail">
		<h2>1 : 1 문의 내역</h2>
		<hr>
		<div id="userDetail">
			<table>
				<tr>
					<td><h2>${cs.ctitle}</h2></td>
				</tr>
				<tr>
					<td><h3><fmt:formatDate value="${cs.cregdate}" pattern="yyyy-MM-dd" var="cregdate"/>${cregdate}</h3></td>
				</tr>
				<tr>
					<td>${cs.ccontent}</td>
				</tr>
			</table>
		</div>
		
		<div id="reply">
			<c:choose>
				<c:when test="${cs.reply == null}">
					등록된 답변이 없습니다.
				</c:when>
				<c:otherwise>
					<h2>답변 드립니다.</h2>
					${cs.reply}
				</c:otherwise>
			</c:choose>
		</div>	
		
	</div>

	<div class="footer">
	    <%@ include file="../footer.jsp" %>
	</div>	
	
</body>
</html>