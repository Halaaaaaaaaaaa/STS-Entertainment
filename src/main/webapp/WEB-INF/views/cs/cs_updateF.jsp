<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기</title>
<link rel="shortcut icon" href="img/favicon.png">
<link rel="stylesheet" type="text/css" href="css/member/cs.css" />
<script type="text/javascript" src="js/member/cs.js"></script>	
</head>
<body>
 
	<div id="cs_update">
		<form id="cs_updateForm" name="cs_updateForm" method="post">
			<input type="hidden" id="cseq" name="cseq"  value="${cs.cseq}">
			<input type="hidden" id="cstatus" name="cstatus" value="${cs.cstatus}">
			<input type="hidden" id="cregdate" name="cregdate" value="<fmt:formatDate value='${cs.cregdate}' pattern='yyyy-MM-dd'/>">
			<input type="hidden" id="reply" name="reply" value="${cs.reply}">
			<div id="memberinfo">
				<h1>고객 정보</h1>
				<h3>문의하신 내용은 메일과 문의 내역에서 답변 드립니다.</h3>
				<table>
					<tr>
						<td align="center">아이디</td>
						<td><input type="text" id="id" name="id" value="${cs.id}" readonly></td>
						<td align="center">성함</td>
						<td><input type="text" id="name" name="name" value="${cs.name}" readonly></td>
					</tr>
					<tr>
						<td align="center">이메일</td>
						<td colspan="3"><input type="text" id="email" name="email" value="${cs.email}"></td>
					</tr>
				</table>
			</div> 
			
			<div id="csinfo">
				<h1>문의하기</h1>
				<h3>문의 유형 및 문의하실 내용을 기재해주시면 보다 상세하고 정확한 답변을 받으실 수 있습니다.</h3>
				<table>
					<tr>
						<td>
							<select name="coption" id="coption">
								<option value="${cs.coption}" disabled selected>${cs.coption}</option>
								<option value="계정 관련">계정 관련</option>
								<option value="예매 관련">예매 관련</option>
								<option value="공연 관련">공연 관련</option>
								<option value="기타">기타</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="text" maxlength="30" id="ctitle" name="ctitle" value="${cs.ctitle}"></td>
					</tr>
					<tr>
						<td><textarea maxlength="1000" id="ccontent" name="ccontent">${cs.ccontent}</textarea></td>
					</tr>
				</table>
			</div> 
			<div align="center">
				<input class="csbtn" type="button" onClick="cs_updateA()" value="수정">
			</div>
		</form>
	</div>

	<div class="footer">
	    <%@ include file="../footer.jsp" %>
	</div>
		
</body>
</html>