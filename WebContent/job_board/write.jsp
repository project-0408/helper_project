<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<link rel="stylesheet" href="/helper_project/css/board_writer.css" type="text/css" />
		<script type="text/javascript" src="script.js" charset="utf-8"></script>
		<link rel="stylesheet"
			href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script>
		$(function() {
	
			//오늘 날짜를 출력
			$("#today").text(new Date().toLocaleDateString());
	
			//datepicker 한국어로 사용하기 위한 언어설정
			$.datepicker.setDefaults($.datepicker.regional['ko']);
	
			// 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
			// 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가
	
			//시작일.
			$('#fromDate').datepicker({
				showOn : "focus", // 달력을 표시할 타이밍 (both: focus or button)
				dateFormat : "yy-mm-dd", // 날짜의 형식
				changeMonth : true, // 월을 이동하기 위한 선택상자 표시여부
				//minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
				onClose : function(selectedDate) {
					// 시작일(fromDate) datepicker가 닫힐때
					// 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
					$("#toDate").datepicker("option", "minDate", selectedDate);
				}
			});
		
				//종료일
			$('#toDate').datepicker({
				showOn : "focus",
				buttonText : "날짜선택",
				dateFormat : "yy-mm-dd",
				changeMonth : true,
				//minDate: 0, // 오늘 이전 날짜 선택 불가
				onClose : function(selectedDate) {
					// 종료일(toDate) datepicker가 닫힐때
					// 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
					$("#fromDate").datepicker("option", "maxDate", selectedDate);
				}
			});
		});
		</script>
		<title>구인 게시글 작성</title>
	</head>
	<%@ include file="/header.jsp" %>
	<body class="total">
		<form action="" method="POST">
			<div class = "section">
				<h1>구인 게시글 작성</h1>
				<div class="date">
					<ul>
						<h3>
							제목 &nbsp;&nbsp;&nbsp;<input type="text" name="title" class = "title">
						</h3>
					</ul>
				<hr>
					<ul>
						<h3>공고기간</h3>
					</ul>
					<ul>
						<input type="text" name="fromDate" id="fromDate"
							placeholder="시작날짜를 선택하세요"> &nbsp;~&nbsp;
						<input type="text" id="toDate" id="toDate"
							placeholder="종료날짜를 선택하세요">
					</ul>
				</div>
				<div class="detail">
					<ul>
						<h3>상세공고</h3>
					</ul>
					<ul>
						<h4>
							카테고리 &nbsp;&nbsp;&nbsp; <select>
								<option value="job">가사도우미</option>
								<option value="job">청소도우미</option>
								<option value="job">등하원도우미</option>
								<option value="job">요리도우미</option>
								<option value="job">산후도우미</option>
								<option value="job">식당도우미</option>
								<option value="job">육아도우미</option>
								<option value="job">펫시터</option>
								<option value="job">베이비시터</option>
								<option value="job">요양보호사</option>
								<option value="job">대리티켓구매</option>
								<option value="job">직구대행</option>
							</select>
						</h4>
					</ul>
					<ul>
						<h4>
							인원수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="number" value="1"
								min="1">
						</h4>
					</ul>
					<ul>
						<h4>
							지역 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select>
								<option value="area">서울</option>
								<option value="area">부산</option>
								<option value="area">인천</option>
								<option value="area">대전</option>
								<option value="area">대구</option>
								<option value="area">광주</option>
								<option value="area">세종시</option>
								<option value="area">제주도</option>
								<option value="area">경기도</option>
								<option value="area">강원도</option>
								<option value="area">충청북도</option>
								<option value="area">충청남도</option>
								<option value="area">전라북도</option>
								<option value="area">전라남도</option>
								<option value="area">경상남도</option>
								<option value="area">경상북도</option>
								<option value="area">해외</option>
							</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							상세장소&nbsp;&nbsp;&nbsp;&nbsp; <input type="text">
						</h4>
					</ul>
					<ul>
						<h4>
							금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text">&nbsp;원
						</h4>
					</ul>
					<ul>
						<h4>상세</h4>
						<textarea cols="60" rows="10"></textarea>
					</ul>
				</div>
				<div class="btn">
					<button type="submit" onclick="">신청하기</button>
					<span><button type="reset">다시쓰기</button></span>
				</div>
			</div>
		</form>
		<div class="clear"></div>
	</body>
	<%@ include file="/footer.jsp" %>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>














