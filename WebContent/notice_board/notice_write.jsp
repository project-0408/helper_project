<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript" src="script.js" charset="utf-8"></script>
<link rel="stylesheet" href="../css/notice.css" type="text/css" />
<title>Insert title here</title>
</head>
<script type="text/javascript">
//입력 자료 검사
function check() {
	if (write_form.notify_title.value == "") {
		alert("제목을 입력하세요");
		write_form.title.focus();
	} else if (write_form.notify_detail.value == "") {
		alert("내용을 입력하세요");
		write_form.cont.focus();IdeConnections%2523local-scott//SCOTT/OPERATOR
	} else
		write_form.submit();
}
</script>
<body>
	<div class="total">
		 <%@ include file="/header.jsp" %>
		<form action="write_action.jsp" method="POST" name="write_form">
			<div class = "section">
			<div class="detail">
				<ul>
					<h3>
						제목 &nbsp;&nbsp;&nbsp;<input type="text" name="notify_title">
						<p></p>
						<br>
						카테고리 &nbsp;&nbsp;&nbsp;<select>
							<option value="0">이벤트</option>
							<option value="1">필독 공지</option>
							<option value="2">이용자 제제</option>
						</select>
						<p></p>
						<br>
					</h3>
					
				</ul>
					<ul>
					<h3>상세 내용</h3>
					<textarea cols="60" rows="10" name="notify_detail"></textarea>
					</ul>
			<div class="btn">
				<button type="submit" onclick="check()">작성하기</button>
				<span><button type="reset">다시쓰기</button></span>
			</div>
			</div>
			</div>
		</form>
		<div class="clear"></div>
		 <%@ include file="/footer.jsp" %>
	</div>
</body>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>














