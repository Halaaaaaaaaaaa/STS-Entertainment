<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>문의 목록</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link href="css/a_performance.css" rel="stylesheet" />
<link rel="shortcut icon" href="img/favicon.png">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<%@ include file="../a_header.jsp"%>
	<div id="layoutSidenav_content">
		<div class="container-fluid px-4">
			<h1 class="mt-4">전체 문의 목록</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item active">C/S List</li>
			</ol>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> 전체 문의 목록
				</div>
				<div class="card-body">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>아이디</th>
								<th>이름</th>
								<th>제목</th>
								<th>문의유형</th>
								<th>작성일</th>
								<th>문의상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="csvo" items="${csList}" varStatus="loop">
								<tr>
									<td><a href="a_cs_detail?cseq=${csvo.cseq}" id="detail">${csvo.id}</a></td>
									<td><a href="a_cs_detail?cseq=${csvo.cseq}" id="detail">${csvo.name}</a></td>
									<td><a href="a_cs_detail?cseq=${csvo.cseq}" id="detail">${csvo.ctitle}</a></td>
									<td>${csvo.coption}</td>
									<td><fmt:formatDate value="${csvo.cregdate}"
											pattern="yyyy-MM-dd" var="cregdate" />${cregdate}</td>
									<td>${csvo.cstatus}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
	<script src="js/datatables-simple-demo.js"></script>
</body>
</html>