<%@page import="db.jobBoardBeans.JobPostSubBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.JobPostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <!-- ★leni★ class list 사용하는지 여쭤보고 수정가능하면 수정하기 -->
            <div class="list" id="job_board_content" style="overflow: auto; height: 400px">
            	<%
            	JobPostDAO jpDAO = JobPostDAO.getInstance();
            	ArrayList<JobPostSubBean> jpsl = jpDAO.getList("1", "1");
            	%>			
                <table id="job_board">
                <!-- ★leni★ database에 내용이 많아지면 이 부분은 지워도 됩니다. -->
                    <tr>
                    	<td><input type="checkbox" value=""></td>
                    	<td id="job_location">지역</td>
                        <td id="job_title"><a href="#">제목</a></td>
                        <td>pay</td>
                        <td>알바날짜</td>
                        <td id="job_time">알바시간</td>
                        <td>등록일</td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox" value=""></td>
                    	<td id="job_location">지역</td>
                        <td id="job_title"><a href="#">제목</a></td>
                        <td>pay</td>
                        <td>알바날짜</td>
                        <td id="job_time">알바시간</td>
                        <td>등록일</td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox" value=""></td>
                    	<td id="job_location">지역</td>
                        <td id="job_title"><a href="#">제목</a></td>
                        <td>pay</td>
                        <td>알바날짜</td>
                        <td id="job_time">알바시간</td>
                        <td>등록일</td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox" value=""></td>
                    	<td id="job_location">지역</td>
                        <td id="job_title"><a href="#">제목</a></td>
                        <td>pay</td>
                        <td>알바날짜</td>
                        <td id="job_time">알바시간</td>
                        <td>등록일</td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox" value=""></td>
                    	<td id="job_location">지역</td>
                        <td id="job_title"><a href="#">제목</a></td>
                        <td>pay</td>
                        <td>알바날짜</td>
                        <td id="job_time">알바시간</td>
                        <td>등록일</td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox" value=""></td>
                    	<td id="job_location">지역</td>
                        <td id="job_title"><a href="#">제목</a></td>
                        <td>pay</td>
                        <td>알바날짜</td>
                        <td id="job_time">알바시간</td>
                        <td>등록일</td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox" value=""></td>
                    	<td id="job_location">지역</td>
                        <td id="job_title"><a href="#">제목</a></td>
                        <td>pay</td>
                        <td>알바날짜</td>
                        <td id="job_time">알바시간</td>
                        <td>등록일</td>
                    </tr>
                    <tr>
                    	<td><input type="checkbox" value=""></td>
                    	<td id="job_location">지역</td>
                        <td id="job_title"><a href="#">제목</a></td>
                        <td>pay</td>
                        <td>알바날짜</td>
                        <td id="job_time">알바시간</td>
                        <td>등록일</td>
                    </tr>
                    
                    
                <%
                if(jpsl != null){
                	for(int i=0; i<jpsl.size(); i++){
                %>
                	<tr>
                        <td><input type="checkbox" value=""></td>
                		<td id="job_location"><%=jpsl.get(i).getJob_location() %></td>
                        <td id="job_title"><a href="detail.jsp?no=<%=jpsl.get(i).getNo()%>"><%=jpsl.get(i).getJob_titile() %></a></td>
                        <td><%=jpsl.get(i).getJob_pay() %></td>
                        <td ><%=jpsl.get(i).getJob_day() %></td>
                        <td id="job_time"><%=jpsl.get(i).getJob_time_start() %> ~ <%=jpsl.get(i).getJob_time_end() %></td>
                        <td><%=jpsl.get(i).getCreated_at() %></td>
                    </tr>
                <%
                	}
                }
                %>
               <script type="text/javascript">
					$('#job_board_content').scroll(function () {
						var scrollT = $(this).scrollTop(); // 스크롤바의 상단위치
						var scrollH = $(this).height(); // 스크롤 바가 갖는 div의 높이
						var contentH = $('#job_board').height(); // 문서 전체 내용을 갖는 div의 높이
						
						if(scrollT+scrollH+1 >= contentH){
							/* ★leni★ 스크롤 시 jdbc 읽어오는 부분 */
							<%
							jpsl = jpDAO.getList("1", "1");
							if(jpsl != null){
							for(int i=0; i<jpsl.size(); i++) {
							%>
								$('#job_board').append('<tr>'+
										'<td><input type="checkbox" value=""></td>'+
										'<td><%=jpsl.get(i).getJob_location() %></td>'+
										'<td><a href="detail.jsp?no=<%=jpsl.get(i).getNo()%>"><%=jpsl.get(i).getJob_titile() %></td>'+
										'<td><%=jpsl.get(i).getJob_pay() %></td>'+
										'<td><%=jpsl.get(i).getJob_day() %></td>'+
										'<td><%=jpsl.get(i).getJob_time_start() %> ~ <%=jpsl.get(i).getJob_time_end() %></td>'+
										'<td class"time"><%=jpsl.get(i).getCreated_at() %></td>'+
										'</tr>');
								<%
								}
							}
							%>
						}			
					});
				</script>
                </table>
            </div>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>
