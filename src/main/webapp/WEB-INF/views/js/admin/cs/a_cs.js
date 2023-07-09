
//관리자-문의 삭제
function a_csDelete() {
	var cseq = document.getElementById("cseq").value;
	var promptObj = prompt('비밀번호를 입력하세요.', '');
	$.ajax({
		type : "POST",
		url : 'a_cs_delete',
		dataType : "text",
		contentType : 'application/x-www-form-urlencoded; charset=utf-8',
		data : {
			a_password : promptObj,
			cseq : cseq
		},
		success : function(data) {
			if (data == 'fail') {
				alert("비밀번호를 틀렸습니다.");
			} else {
				console.log(data);
				document.write(data);
			}
		},
		error : function(data) {
			if (data.status == 401) {
				alert('failed.');

				return;
			}
		}
	});
}

//관리자-문의 답변 달기
function a_cs_update() {
	if (document.getElementById("reply").value == "") {
		alert("사용자 문의에 답변을 달아주세요");
		document.getElementById("reply").focus();
		return false;
	}

	var theform = document.getElementById("a_cs_reply");
		alert("문의사항이 수정되었습니다.");
		theform.action = "a_cs_replyA"
		theform.submit();
}


