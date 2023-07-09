//문의사항 작성
function save_cs() {
	if (document.getElementById("coption").value == "") {
		alert("문의유형을 선택해 주세요");
		document.getElementById("coption").focus();
		return false;
	}
	if (document.getElementById("ctitle").value == "") {
		alert("제목을 입력해 해주세요");
		document.getElementById("ctitle").focus();
		return false;
	}
	if (document.getElementById("ccontent").value == "") {
		alert("내용을 입력해 해주세요");
		document.getElementById("ccontent").focus();
		return false;
	} 
	
	var theform = document.getElementById("cs_insertForm");
		alert("문의사항이 등록되었습니다.");
		theform.action = "cs_insert";
		theform.submit();
}


//문의사항 수정
function cs_updateA() {
	if (document.getElementById("coption").value == "") {
		alert("문의유형을 선택해 주세요");
		document.getElementById("coption").focus();
		return false;
	}
	if (document.getElementById("ctitle").value == "") {
		alert("제목을 입력해 해주세요");
		document.getElementById("ctitle").focus();
		return false;
	}
	if (document.getElementById("ccontent").value == "") {
		alert("내용을 입력해 해주세요");
		document.getElementById("ccontent").focus();
		return false;
	} 

	var theform = document.getElementById("cs_updateForm");
		alert("문의사항이 수정되었습니다.");
		theform.action = "cs_update"
		theform.submit();
}


//문의사항 삭제
function cs_delete() {
	var cseq = document.getElementById("cseq").value;
	var promptObj = prompt('비밀번호를 입력하세요.', '');
	$.ajax({
		type : "POST",
		url : 'cs_delete',
		dataType : "text",
		contentType : 'application/x-www-form-urlencoded; charset=utf-8',
		data : {
			password : promptObj,
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

