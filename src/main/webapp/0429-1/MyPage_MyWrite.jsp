<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <link rel="stylesheet" href="myWrite.css"  type="text/css" />
<title>Document</title>

</head>
<body>
<div class="total">
    <header class="header">
            <div class="header_logo">
              <h1>
                <a href="#">
                <img
                    src="../images/logo11.png"
                    alt="home"
                    width="200"
                    height="100"/></a>
              </h1>
            </div>
            <div class="header_gnb">
              <ul>
                <li><a href="#">홈</a></li>
                <li><a href="#">구인게시판</a></li>
                <li><a href="#">포인트상점</a></li>
                <li><a href="#">마이페이지</a></li>
                <li><a href="#">로그인</a></li>
              </ul>
            </div>
          </header>
	<section>
		<form>
			<div class="top"></div>
			<div class="mid"></div>
			<div class="box">
				<div class="leftbox">
					<h3>My page</h3>
					<button type="button"
						onclick="location.href='MyPage_pix_impor.jsp'">회원정보 수정</button>
					<br>
					<button type="button" onclick="location.href='MyPage_MyWrite.jsp'">내가
						쓴글</button>
					<br>
					<button type="button" onclick="location.href='#'">지원현황</button>
					<br>
					<button type="button" onclick="location.href='#'">스크렙</button>
					<br>
					<button type="button" onclick="location.href='Mypage_license.jsp'">자격증
						및 경력</button>
				</div>
				<div class="mainbox">
					<h1>등록한 글 목록</h1>
					<table>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목1</td>
							<th colspan="2"><input type="submit" value="수정">
							<input type="submit" value="삭제"></th>
						</tr>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목2</td>
							<th><input type="submit" value="수정">
							<input type="submit" value="삭제"></th>
						</tr>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목3</td>
							<th><input type="submit" value="수정" >
							<input type="submit" value="삭제"></th>
						</tr>
					</table>
				</div>
			</div>
		</form>
	</section>
	<div class="clear"></div>
<div class="clear"></div>
    <div class="footer">
            <div class="f_img"><img src="../images/footer.png" id="f_img"></div>
            <div>
              Green.co <br>
              Addr. 부산시 가나다동 가나다라구 2로 1234 <br>
              010 - 123 -1234 <br>
              COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.
            </div>
          </div>
</div>
</body>
</html>