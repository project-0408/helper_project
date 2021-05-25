<%@page import="db.volunteerBeans.MyVolunteerBean"%>
<%@page import="db.VolunteerDAO"%>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <link rel="stylesheet" href="../css/mypage_apply.css"  type="text/css" />
<title>Document</title>
</head>
<body>
<%
String user_no = (String) session.getAttribute("no");
VolunteerDAO vDAO = VolunteerDAO.getInstance();
ArrayList<MyVolunteerBean> myList = vDAO.getMyList(user_no);
%>
<div class="total">
    <%@ include file="/header.jsp" %>
	<section>
		<form>
			<div class="top"></div>
			<div class="mid"></div>
			<div class="box">
				<div class="leftbox">
					<h3>My page</h3>
                    <button type="button" onclick="location.href='mypage_import.jsp'">회원정보 수정</button>
                    <br>
                    <button type="button" onclick="location.href='mp_write.jsp'">내가 쓴글</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_apply.jsp'">지원현황</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_point.jsp'">마이포인트조회</button>
                    <br>
                    <button type="button" onclick="location.href='mypageLike.jsp'">스크랩</button>
				</div>
					<p>&nbsp;&nbsp;</p>
					<p>&nbsp;&nbsp;</p>
					<p>&nbsp;&nbsp;</p>
				<div class="mainbox">
					<h1>&nbsp;&nbsp;지원 현황</h1>
					<p>&nbsp;&nbsp;</p>
					<p>&nbsp;&nbsp;</p>
					<table>
					<%
					for(int i=0; i<myList.size(); i++){
					%>
						<tr style="height: 50px;">
							<th width = "70px;">일 자</th>
							<th width = "70px;">시 간</th>
							<th width="200px;">지원 업무 명</th>
							<th width = "150px;">현재 지원자 </th>
						</tr>
					<%
					}
					%>
					</table>
				</div>
			</div>
		</form>
	</section>
	<div class="clear"></div>
        <%@ include file="/footer.jsp" %>
</div>
</body>
</html>