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
	<div id="cs_list">
		<c:forEach var="cs" items="${csList}" varStatus="status">
			<c:if test="${status.index == 0}">
				<h2><i>${cs.id}</i> 님 문의 내역</h2>
			</c:if>
		</c:forEach>
		
		<div>
			<c:forEach var="cs" items="${csList}" varStatus="loop">
				<hr>
				<table id="cslist">
					<tr>
						<td>${cs.cstatus}</td>
						<td><a href="cs_detail?cseq=${cs.cseq}" id="detail">${cs.ctitle}</a></td>
					</tr>
					<tr>
						<td></td>
						<td><fmt:formatDate value="${cs.cregdate}" pattern="yyyy-MM-dd" var="cregdate"/>
								<a href="cs_detail?cseq=${cs.cseq}" id="detail">${cregdate}</a></td>
					</tr>
				</table>
			</c:forEach>
		</div>

	</div>

	<div class="footer">
	    <%@ include file="../footer.jsp" %>
	</div>	
	
</body>
</html>