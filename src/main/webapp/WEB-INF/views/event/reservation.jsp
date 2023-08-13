<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 행사 예매 페이지 -->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/event/reservation.css">
        <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js'></script>
        <title>행사 예매</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<%-- 			<input type="hidden" name="userId" value="${ user.userId }"> --%>
            <main>
                <section id="reservation-title">
                    <h1>행사 예매</h1>
                    <div id="colorBox"></div>
                </section>
                <section id="reservation">
                    <!-- 달력 -->
                    <div id="calendar"></div>
                    <!-- 예매 선택창 -->
                    <div id="reservation-input">
                        <form action="/event/reservation.do" method="post">
                            <div id="select-event">
                                <label for="select-place">행사 선택</label><br>
                                <select name="select-place" id="select-place" required>
                                    <option value="" disabled selected hidden>고궁을 선택해 주세요.</option>
                                        <option value="경복궁">경복궁</option>
                                        <option value="덕수궁">덕수궁</option>
                                        <option value="창경궁">창경궁</option>
                                        <option value="창덕궁">창덕궁</option>
                                        <option value="종묘">종묘</option>
                                </select>
                                <br>
                                <label for="select-date">날짜 선택</label><br><input type="date" name="select-date" id="select-date" required>
                                <br>
                                <label for="select-time">시간 선택</label><br>
                                <select name="select-time" id="select-time" required>
                                    <option value="" disabled selected hidden>방문 시간을 선택해 주세요.</option>
                                        <option value="18 : 40">18 : 40</option>
                                        <option value="19 : 40">19 : 40</option>
                                </select>
                                <br>
                                <label for="select-people">예매 인원 선택</label><br><input type="number" name="select-people" id="select-people" min="1" max="10" placeholder="예매 인원을 선택해 주세요. (최대 10명)" required>
                            </div>
                            <div id="user-info">
                                <div>
                                    <h3>예매자 정보</h3>
                                    <c:if test="${ sessionScope.userId ne null }">
			                        	<input type="hidden" name="userId" value="${ sessionScope.userId }">
                                    	<label for="login-user"><input type="checkbox" name="login-user" id="login-user" value="Y"> 가입 정보와 동일</label>
                                    </c:if>
                                </div>
                                <label for="user-name">이름</label><br><input type="text" name="user-name" id="user-name" required>
                                <br>
                                <label for="user-phone">전화번호</label><br><input type="tel" name="user-phone" id="user-phone" placeholder="하이픈(-)은 빼고 입력해 주세요." required>
                                <br>
                                <label for="user-email">이메일 (선택)</label><br><input type="email" name="user-email" id="user-email">
                                <br>
                            </div>
                            <div id="reservation-btn">
                                <input type="submit" value="예매하기" id="submit-btn">
                                <input type="reset" value="취소하기" id="reset-btn">
                            </div>
                        </form>
                    </div>
                </section>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/views/include/asideMovePageBtn.jsp"></jsp:include>
        </div>


        <!-- 달력  -->
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                var initialLocaleCode = 'ko';
                var localeSelectorEl = document.getElementById('locale-selector');
                var calendarEl = document.getElementById('calendar');
                var calendar = new FullCalendar.Calendar(calendarEl, {
                    initialView: 'dayGridMonth',
                    locale: initialLocaleCode,

                    buttonText:{
                        today: '오늘'
                    },

                    events:[
                        {
                            title: '별빛야행 1차',
                            start:'2023-05-20',
                            end: '2023-05-22',
                            color: 'gold',
                            textColor: 'black'
                        },
                        {
                            title: '별빛야행 2차',
                            start:'2023-09-15',
                            end: '2023-09-26',
                            color: 'gold',
                            textColor: 'black'
                        },
                        {
                            title: '밤의 석조전',
                            start:'2023-06-02',
                            end: '2023-06-12',
                            color: 'lightblue',
                            textColor: 'black'
                        },
                        {
                            title: '달빛기행 1차',
                            start:'2023-06-21',
                            end: '2023-06-24',
                            color: 'purple',
                            textColor: 'white'
                        },
                        {
                            title: '달빛기행 2차',
                            start:'2023-10-06',
                            end: '2023-10-11',
                            color: 'purple',
                            textColor: 'white'
                        },
                        {
                            title: '종묘 묘현례 1차',
                            start:'2023-07-10',
                            end: '2023-07-17',
                            color: 'cadetblue',
                            textColor: 'white'
                        },
                        {
                            title: '종묘 묘현례 2차',
                            start:'2023-08-14',
                            end: '2023-08-18',
                            color: 'cadetblue',
                            textColor: 'white'
                        },
                        {
                            title: '궁궐 일상모습 재현 및 체험',
                            start:'2023-10-01',
                            end: '2023-10-06',
                            color: '#EA5455',
                            textColor: 'white'
                        }
                    ]
                });
                calendar.render();
            });
        </script>

        <!-- 버튼 이벤트 -->
        <script>
//             // 예매자 정보 동일 선택 시, 자동 입력
//             document.getElementById("login-user").addEventListener("change", function(){
//                 if(document.getElementById("login-user").checked){
//                     document.getElementById("user-name").value = "홍길동";
//                     document.getElementById("user-phone").value = "01011112222";
//                     document.getElementById("user-email").value = "xxx@xxx.xxx";
//                 } else {
//                     document.getElementById("user-name").value = "";
//                     document.getElementById("user-phone").value = "";
//                     document.getElementById("user-email").value = "";
//                 }
//             });
            
            // 예매자 정보 동일 선택 시, 자동 입력
            document.getElementById("login-user").addEventListener("change", function(){
            	const userName = '${ user.userName }';
            	const userPhone = '${ user.userPhone }';
            	const userEmail = '${ user.userEmail }';
                if(document.getElementById("login-user").checked){
                    document.getElementById("user-name").value = userName;
                    document.getElementById("user-phone").value = userPhone;
                    document.getElementById("user-email").value = userEmail;
                } else {
                    document.getElementById("user-name").value = "";
                    document.getElementById("user-phone").value = "";
                    document.getElementById("user-email").value = "";
                }
            });
            </script>

			<script>
            // input 박스 내부 글씨 색 변경 용
            document.getElementById("select-place").addEventListener("change", function(){
                document.getElementById("select-place").style.color = "black";
            });

            document.getElementById("select-date").addEventListener("change", function(){
                document.getElementById("select-date").style.color = "black";
            });

            document.getElementById("select-time").addEventListener("change", function(){
                document.getElementById("select-time").style.color = "black";
            });

            document.getElementById("reset-btn").addEventListener("click", function(){
                for(var i = 0; i < 2; i++){
                    document.querySelectorAll("select")[i].style.color = "#a9a9a9";
                }
                document.getElementById("select-date").style.color = "#a9a9a9";
            });

            // 유효성 검사 용. 실패 시 > input 박스 색상 변경 처리 (빨강)
            document.querySelectorAll("input").forEach(input => {
                input.addEventListener("invalid", () => {
                    document.forms[0].classList.add("was-validated")
                })
            });
        </script>
    </body>
</html>