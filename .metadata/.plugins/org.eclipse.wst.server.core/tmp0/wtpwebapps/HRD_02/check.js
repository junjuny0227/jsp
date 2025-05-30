const fnSub2FormCheck = () => {
	const stuid = document.sub2Form.stuid.value;
	const midScore = document.sub2Form.midScore.value;
	const finalScore = document.sub2Form.finalScore.value;
	const attend = document.sub2Form.attend.value;
	const report = document.sub2Form.report.value;
	const etc = document.sub2Form.etc.value;

	if (stuid === "" || stuid.trim().length === 0) {
		alert("학번이 입력되지 않았습니다.");
		document.sub2Form.stuid.focus();
		return false;
	} else if (midScore === "" || midScore.trim().length === 0) {
		alert("중간고사 점수가 숫자가 아니거나 입력되지 않았습니다.");
		document.sub2Form.midScore.focus();
		return false;
	} else if (finalScore === "" || finalScore.trim().length === 0) {
		alert("기말고사 점수가 숫자가 아니거나 입력되지 않았습니다.");
		document.sub2Form.finalScore.focus();
		return false;
	} else if (attend === "" || attend.trim().length === 0) {
		alert("출석 점수가 숫자가 아니거나 입력되지 않았습니다.");
		document.sub2Form.attend.focus();
		return false;
	} else if (report === "" || report.trim().length === 0) {
		alert("레포트 점수가 숫자가 아니거나 입력되지 않았습니다.");
		document.sub2Form.report.focus();
		return false;
	} else if (etc === "" || etc.trim().length === 0) {
		alert("기타 점수가 숫자가 아니거나 입력되지 않았습니다.");
		document.sub2Form.etc.focus();
		return false;
	} else {
		alert("성적정보가 정상적으로 등록되었습니다.");
		document.sub2Form.submit();
	}
}

const fnSub2FormReset = () => {
	if (confirm("정보를 처음부터 다시 입력해야합니다.")) {
		document.sub2Form.reset();
	} else {
		return false;
	}
}

const fnSub4FormCheck = () => {
  const searchSubcode = document.sub4Form.searchSubcode.value;

  if (searchSubcode === "" || searchSubcode.trim().length === 0) {
    alert("과목코드가 입력되지 않았습니다.");
    document.sub4Form.searchSubcode.focus();
    return false;
  }

  document.sub4Form.submit();
};
