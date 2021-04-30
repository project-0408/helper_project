<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/board_writer.css" type="text/css" />
<title>Insert title here</title>
<script type="text/javascript" src="script.js" charset="utf-8"></script>
</head>
<body>
	<div class="total">
		<header class="header">
			<div class="header_logo">
				<h1>
					<a href="main.jsp"> <img src="images/logo11.png" alt="home"
						width="200" height="100" /></a>
				</h1>
			</div>
			<div class="header_gnb">
				<ul>
					<li><a href="main.jsp">HOME</a></li>
					<li><a href="#">구인게시판</a></li>
					<li><a href="shop.jsp">포인트상점</a></li>
					<li><a href="mypage_import.jsp">마이페이지</a></li>
					<li><a href="login.jsp">LOGIN</a></li>
				</ul>
			</div>
		</header>
		<form action="" method="POST">
		<div class = "section">
			<div class="title">
				<ul>
					<h3>
						제목 &nbsp;&nbsp;&nbsp;<input type="text" name="title">
					</h3>
				</ul>
			</div>
			<div class="import">
				<ul>
					<h3>공고 내용</h3>
					<br>
				</ul>
				<ul>
					<h4>기간 &nbsp; &nbsp;<input type="date"></h4>
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
					<textarea cols="50" rows="10"></textarea>
				</ul>
			</div>
			<div class="button">
				<button type="submit" onclick="">신청하기</button>
				<span><button type="reset">다시쓰기</button></span>
			</div>
		</div>
		</form>
		<div calss = "space"></div>
		<div class="footer">
			<div class="f_img">
				<img src="images/footer.png" id="f_img">
			</div>
			<div>
				Green.co <br> Addr. 부산시 가나다동 가나다라구 2로 1234 <br> 010 - 123
				-1234 <br> COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.
			</div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>














