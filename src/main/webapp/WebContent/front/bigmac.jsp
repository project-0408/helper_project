<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- 이미지크기 387*387-->
<link rel="stylesheet" href="./css/shop-in.css">
</head>
<body>
	<div class="total">
		<header class="header">
			<div class="header_logo">
				<h1>
					<a href="main.jsp"> <img src="./images/logo11.png" alt="home"
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

		<div class="product_view">
			<h2>[맥도날드]빅맥세트</h2>
			<table>
				<colgroup>
					<col style="width: 173px;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th>판매포인트</th>
						<td class="price">5,550</td>
					</tr>
					<tr>
						<th>제조사/공급사</th>
						<td>맥도날드</td>
					</tr>
					<tr>
						<th>구매수량</th>
						<td>
							<div class="length">
								<input type="number" min="1" value="1"> <a href="#a">증가</a>
								<a href="#a">감소</a>
							</div>
						</td>
					</tr>
					<tr>
						<th>사용가능포인트</th>
						<td>0포인트</td>
					</tr>
					<tr>
						<th>옵션선택</th>
						<td><select>
								<option>기본(+0)</option>
						</select></td>
					</tr>
					<tr>
						<th>배송비</th>
						<td>무료배송</td>
					</tr>
					<tr>
						<th>결제포인트</th>
						<td class="total"><b>5,550</b></td>
					</tr>
				</tbody>
			</table>
			<div class="img">
				<img src="./images/mac.jpg" alt="">
				<ul>
					<li class="on"><a href="#a"><img src="./images/mac.jpg"
							alt=""></a></li>
				</ul>
			</div>
			<div class="btns">
				<a href="#a" class="btn1">장바구니</a> <a href="#a" class="btn2">구매하기</a>
				<a href="shop.jsp" class="btn3">목록으로</a>
			</div>
		</div>
		<div class="clear"></div>
		<footer>
			<div id="footer_box">
				<div id="footer_logo">
					<img src="./images/footer.png" width="100" height="100">
				</div>
				<div id="address">
					<ul>
						<li>Green.co</li>
						<li>Addr. 부산시 가나다동 가나다라구 2로 1234</li>
						<li>010 - 123 - 1234</li>
						<li>© COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.</li>
					</ul>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>
</body>
</html>