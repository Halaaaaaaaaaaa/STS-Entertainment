//문의사항 작성
function save_cs() {
	if (document.getElementById("coption").value == "") {
		alert("문의유형을 선택해 주세요");
		document.getElementById("coption").focus();
		return false;
	} else if (document.getElementById("ctitle").value == "") {
		alert("제목을 입력해 해주세요");
		document.getElementById("ctitle").focus();
		return false;
	} else if (document.getElementById("ccontent").value == "") {
		alert("내용을 입력해 해주세요");
		document.getElementById("ccontent").focus();
		return false;
	} else {
		var theform = document.getElementById("cs_insertForm");
		alert("문의사항이 등록되었습니다.");
		theform.action = "cs_insert";
		theform.submit();
	}
}

