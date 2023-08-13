<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/user/my-info.css">
        <title>마이페이지</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
			<main>
			<section id="myinfo-title">
                    <h1>마이페이지</h1>
                    <div id="colorBox"></div>
            </section>
            <section id="my">
            	<section id="myinfo">
	                <div id="myinfo-input">
	                    <form action="/user/modify.do?userId=${ user.userId }" method="post">
	                        <label for="user-id">아이디</label><br><input type="text" style="background-color:#ccc;" name="user-id" id="user-id" value="${ user.userId }" readonly>
	                        <br>
	                        <label for="user-pw">비밀번호</label><br><input type="password" name="user-pw" id="user-pw" value="${ user.userPw }">
	                        <br>
	                        <label for="user-pw-check">비밀번호 확인</label><br><input type="password" id="user-pw-check" placeholder="수정한 비밀번호를 다시 입력해 주세요.">
	                        <br>
	                        <label for="user-name">이름</label><br><input type="text" style="background-color:#ccc;" name="user-name" id="user-name" value="${ user.userName }" readonly>
	                        <br>
	                        <label for="user-phone">전화번호</label><br><input type="tel" name="user-phone" id="user-phone" value="${ user.userPhone }">
	                        <br>
	                        <label for="user-email">이메일 (선택)</label><br><input type="email" name="user-email" id="user-email" value="${ user.userEmail }">
	                        <br>
	                        <c:if test="${ user.userEventYn eq 'Y' }">
		                        <label for="user-event-yn"><input type="checkbox" name="user-event-yn" id="user-event-yn" value="Y" checked> SMS, 이메일로 상품 및 이벤트 정보를 받겠습니다. (선택)</label>
	                        </c:if>
	                        <c:if test="${ user.userEventYn eq 'N' }">
	   	                        <label for="user-event-yn"><input type="checkbox" name="user-event-yn" id="user-event-yn" value="N"> SMS, 이메일로 상품 및 이벤트 정보를 받겠습니다. (선택)</label>
	                        </c:if>
	                        <br>
	                        <div id="myinfo-btn">
	                            <button type="submit" id="modify-btn">수정하기</button>
	<!--                             <button onclick="location.href='javascript:void(0); checkDelete();" id="delete-btn">탈퇴하기</button> -->
	                            <a href="javascript:void(0)"><input type="button" onclick="checkDelete();" id="delete-btn" value="탈퇴하기"></a>
	                        </div>
	                    </form>
	                </div>
	            </section>
	            <section id="my-activity">
					<h4>행사 예매 내역</h4>
					<section id="my-reserve">
						<table>
							<tr>
								<th>행사 장소</th>
								<th>날짜</th>
								<th>시간</th>
							</tr>
							<c:forEach var="reserve" items="${ rList }">
								<tr>
									<td>${ reserve.reservePlace }</td>
									<td>${ reserve.reserveDate }</td>
									<td>${ reserve.reserveTime }</td>
								</tr>
							</c:forEach>
						</table>
					</section>            
					<h4>한복 대여 내역</h4>
					<section id="my-rental">
						<table>
							<tr>
								<th>OOO 지점</th>
								<th>대여 일자</th>
								<th>한복 이름</th>
							</tr>
							<c:forEach var="rental" items="${ hList }">
								<tr>
									<td>${ rental.rentalPlace }</td>
									<td>${ rental.rentalDate }</td>
									<td>${ rental.rentalHanbok }</td>
								</tr>
							</c:forEach>
						</table>
					</section>            
					<h4>나의 질문</h4>
					<section id="my-q">
						<table>
							<c:forEach begin="0" end="0">
								<tr>
									<th>제목</th>
									<th>작성일</th>
								</tr>
							</c:forEach>
						</table>
					</section>            
	            </section>
            </section>
			</main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/views/include/asideMovePageBtn.jsp"></jsp:include>
		</div>

        <script>
            var userPw = document.getElementById("user-pw");
            var userPwCheck = document.getElementById("user-pw-check");

            function checkPassword() {
                if(userPw.value != userPwCheck.value){
                    userPwCheck.setCustomValidity("비밀번호가 일치하지 않습니다."); 
                } else {
                    userPwCheck.setCustomValidity(''); 
                }
            }

            userPw.onchange = checkPassword;
            userPwCheck.onkeyup = checkPassword;
        </script>
        
        <script>
			function checkDelete() {
				const userId = '${ sessionScope.userId }';
				if(confirm("탈퇴하시겠습니까?")){
					location.href = "/user/delete.do?userId=" + userId;
				} 				
			}
		</script>

	</body>
</html>