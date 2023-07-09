<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>1 : 1 문의 답변</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link rel="shortcut icon" href="img/favicon.png">
<link href="css/admin/cs/a_cs_detail.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="js/admin/cs/a_cs.js"></script>
</head>
<body class="sb-nav-fixed">
	<%@ include file="../a_header.jsp"%>
	<div id="layoutSidenav_content">
		<form id="a_cs_reply" name="a_cs_reply" method="post">
			<div class="container-fluid px-4">
				<h1 class="mt-4">1:1 문의 답변</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">C/S Information</li>
				</ol>
	
				<div class="card mb-4">
					<input type="hidden" id="cseq" name="cseq" value="${csvo.cseq}">
					<input type="hidden" id="id" name="id" value="${csvo.id}">
					<input type="hidden" id="name" name="name" value="${csvo.name}">
					<input type="hidden" id="email" name="email" value="${csvo.email}">
					<input type="hidden" id="cregdate" name="cregdate" value="<fmt:formatDate value='${csvo.cregdate}'
										pattern='yyyy-MM-dd' />">
					<input type="hidden" id="coption" name="coption" value="${csvo.coption}">
					<input type="hidden" id="ctitle" name="ctitle" value="${csvo.ctitle}">
					<input type="hidden" id="ccontent" name="ccontent" value="${csvo.ccontent}">
					<input type="hidden" id="cstatus" name="cstatus" value="${csvo.cstatus}">
					<div class="card-header">
						<i class="fas fa-table me-1"></i> <a href="a_cs_main" id="detail"><b>문의내역</b></a>&nbsp;/&nbsp;No.${csvo.cseq}<br>
					</div>
					<div class="card-body">
						<span id="csDetailText">고객 정보</span>
						<table class="memberInfo">
							<tr>
								<td align="center">아이디</td>
								<td>${csvo.id}</td>
								<td align="center">성함</td>
								<td>${csvo.name}</td>
							</tr>
							<tr>
								<td align="center">이메일</td>
								<td colspan="3">${csvo.email}</td>
							</tr>
						</table>
	
						<span id="csDetailText">문의 정보</span>
						<table class="csInfo">
							<tr>
								<td align="center">문의 유형</td>
								<td>${csvo.coption}</td>
								<td align="center">작성일</td>
								<td><fmt:formatDate value="${csvo.cregdate}"
										pattern="yyyy-MM-dd" var="cregdate" />${cregdate}</td>
							</tr>
							<tr>
								<td align="center">문의 제목</td>
								<td colspan="3">${csvo.ctitle}</td>
							</tr>
							<tr>
								<td align="center">문의 내용</td>
								<td colspan="3">${csvo.ccontent}</td>
							</tr>
						</table>
						
						<span id="csDetailText">답변 내용</span>
						<table class="replyInfo">
							<tr>
								<td>
									<c:choose>
										<c:when test="${csvo.reply == null}">
											<textarea id="reply" name="reply" placeholder="사용자 문의 사항에 답변을 달아주세요." maxlength="500">${csvo.reply}</textarea>
										</c:when>
										<c:otherwise>
											<textarea id="reply" name="reply" maxlength="500">${csvo.reply}</textarea>
										</c:otherwise>
									</c:choose>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div align="right">
					<button type="button" class="btn btn-primary"
							onclick="a_cs_update()">답변 달기</button>
				</div>
			</div>
		</form>
	</div>
	<script src="js/admin/cs/a_cs.js"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>