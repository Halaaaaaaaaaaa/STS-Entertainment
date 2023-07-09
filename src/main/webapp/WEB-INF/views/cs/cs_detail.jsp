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
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div id="cs_detail">
		<input type="hidden" id="cseq" value="${cs.cseq}">
		<input type="hidden" id="cstatus" value="${cs.cstatus}">
		<input type="hidden" id="cregdate" value="${cs.cregdate}">
		<input type="hidden" id="reply" value="${cs.reply}">
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
					<h3>등록된 답변이 없습니다.</h3>
				</c:when>
				<c:otherwise>
					<div id="replyText">
						<h2>답변 드립니다.</h2>
						${cs.reply}
					</div>
				</c:otherwise>
			</c:choose>
		</div>	
		
		<div align="center">
			<button type="button" onclick="location.href='cs_updateF?cseq=${cs.cseq}'" class="btn_update">수정</button>&emsp;&emsp;
			<button type="button" onclick="cs_delete()" class="btn_delete">삭제</button>
		</div>
		
	</div>
	<script src="js/member/cs.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	
	<div class="footer">
	    <%@ include file="../footer.jsp" %>
	</div>	
	
</body>
</html>