<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 한복 대여 페이지 -->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/hanbok/rentals.css">
        <title>한복 대여</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <section id="rentals-title">
                    <h1>한복 대여</h1>
                    <div id="colorBox"></div>
                </section>
                <!-- 간략 소개 -->
                <section id="short-description">
                    <div id="red-line"></div>
                    <h2>아름다운 우리의 멋을 찾아서</h2>
                    <br><br><br>
                    <p style="font-size: 1em;">
                        고궁 행사를 더 알차게 즐기실 수 있도록, ○○○와 함께 한복 대여 서비스를 지원합니다.<br>
                        가온누리에서 원하시는 한복 선택 및 대여 후, 고궁 입장 전 ○○○ 매장을 찾아와주세요. 대여부터 환복까지 전부 빠르게 도와드리겠습니다.
                    </p>
                </section>
                <!-- 한복 대여 목록 -->
                <section id="shopping">
                    <div id="select-input">
                        <form action="/hanbok/rental.do" method="get">
                            <div>
                                <label for="select-place">○○○ 지점 선택</label><br>
                                <select name="select-place" id="select-place" required>
                                    <option value="" disabled selected hidden>이용할 지점을 선택해주세요.</option>
                                        <option value="">경복궁</option>
                                        <option value="">덕수궁</option>
                                        <option value="">창경궁</option>
                                        <option value="">창덕궁</option>
                                        <option value="">종묘</option>
                                </select>
                            </div>
                            <div>
                                <label for="select-date">대여 일자</label><br>
                                <input type="datetime-local" name="select-date" id="select-date">
                            </div>
                        </form>
                    </div>
                    <div class="rental-list">
                        <div class="hanbok">
                            <!-- 대표 이미지 -->
                            <img src="/resources/img/hanbok/rentals/hanbok1.jpg" alt="여성용 여름 한복 세트" class="hanbok-img">
                            <!-- 이름 -->
                            <h3><span>[ 여성용 ]</span> 여름 한복 세트</h3>
                            <!-- 간략 소개 -->
                            <p>얇은 소재로 시원함과<br>유려한 선을 돋보인 한복입니다.</p>
                            <!-- 가격 -->
                            <p>89,000원</p>
                            <div>
                                <!-- 찜하기 버튼 -->
                                <img src="/resources/img/hanbok/heart.png" alt="찜하기(안됨)">
                                <!-- 대여하기 버튼 -->
                                <button onclick="location.href='/hanbok/detail.do'">대여하기 ></button>
                            </div>
                        </div>
                        <div class="hanbok">
                            <img src="/resources/img/hanbok/rentals/hanbok2.jpg" alt="남성용 여름 한복 세트" class="hanbok-img">
                            <h3><span>[ 남성용 ]</span> 여름 한복 세트</h3>
                            <p>얇은 소재로 시원함과<br>유려한 선을 돋보인 한복입니다.</p>
                            <p>89,000원</p>
                            <div>
                                <img src="/resources/img/hanbok/colored-heart.png" alt="찜하기(됨)">
                                <button onclick="location.href='#'">대여하기 ></button>
                            </div>
                        </div>
                        <div class="hanbok">
                            <img src="/resources/img/hanbok/rentals/hanbok3.jpg" alt="여성용 겨울 한복 세트" class="hanbok-img">
                            <h3><span>[ 여성용 ]</span> 겨울 한복 세트</h3>
                            <p>도톰한 소재로 따뜻함과<br>고급스러움을 강조한 한복입니다.</p>
                            <p>105,000원</p>
                            <div>
                                <img src="/resources/img/hanbok/heart.png" alt="찜하기(안됨)">
                                <button onclick="location.href='#'">대여하기 ></button>
                            </div>
                        </div>
                        <div class="hanbok">
                            <img src="/resources/img/hanbok/rentals/hanbok4.jpg" alt="아동용 한복 세트" class="hanbok-img">
                            <h3><span>[ 아동용 ]</span> 한복 세트</h3>
                            <p>아이들도 편하게 착용할 수 있는<br>부드러운 소재로 제작된 한복입니다.</p>
                            <p>54,000원</p>
                            <div>
                                <img src="/resources/img/hanbok/heart.png" alt="찜하기(안됨)">
                                <button onclick="location.href='#'">대여하기 ></button>
                            </div>
                        </div>                        
                    </div>
                    <div class="rental-list">
                        <div class="hanbok">
                            <img src="/resources/img/hanbok/rentals/hanbok5.jpg" alt="여성용 표준 한복 세트" class="hanbok-img">
                            <h3><span>[ 여성용 ]</span> 표준 한복 세트</h3>
                            <p>언제나 착용할 수 있는<br>가장 일반적인 한복입니다.</p>
                            <p>97,000원</p>
                            <div>
                                <img src="/resources/img/hanbok/heart.png" alt="찜하기(안됨)">
                                <button onclick="location.href='#'">대여하기 ></button>
                            </div>
                        </div>
                        <div class="hanbok">
                            <img src="/resources/img/hanbok/rentals/hanbok6.jpg" alt="여성용 특별 한복 세트" class="hanbok-img">
                            <h3><span>[ 여성용 ]</span> 특별 한복 세트</h3>
                            <p>누구보다 돋보이고 싶은 날에 좋은<br>화려하게 흩날리는 한복입니다.</p>
                            <p>162,000원</p>
                            <div>
                                <img src="/resources/img/hanbok/heart.png" alt="찜하기(안됨)">
                                <button onclick="location.href='#'">대여하기 ></button>
                            </div>
                        </div>
                        <div class="hanbok">
                            <img src="/resources/img/hanbok/rentals/hanbok7.jpg" alt="여성용 단아한 한복 세트" class="hanbok-img">
                            <h3><span>[ 여성용 ]</span> 단아한 한복 세트</h3>
                            <p>차분하고 깔끔한 디자인의<br>단아한 멋을 강조한 한복입니다.</p>
                            <p>89,000원</p>
                            <div>
                                <img src="/resources/img/hanbok/colored-heart.png" alt="찜하기(됨)">
                                <button onclick="location.href='#'">대여하기 ></button>
                            </div>
                        </div>
                        <div class="hanbok">
                            <img src="/resources/img/hanbok/rentals/hanbok8.jpg" alt="남성용 표준 한복 세트" class="hanbok-img">
                            <h3><span>[ 남성용 ]</span> 표준 한복 세트</h3>
                            <p>언제나 착용할 수 있는<br>가장 일반적인 한복입니다.</p>
                            <p>97,000원</p>
                            <div>
                                <img src="/resources/img/hanbok/heart.png" alt="찜하기(안됨)">
                                <button onclick="location.href='#'">대여하기 ></button>
                            </div>
                        </div>                        
                    </div>
                </section>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/views/include/asideMovePageBtn.jsp"></jsp:include>
        </div>

        <script>
            // input 박스 내부 글씨 색 변경 용
            document.getElementById("select-place").addEventListener("change", function(){
                document.getElementById("select-place").style.color = "black";
            });

            document.getElementById("select-date").addEventListener("change", function(){
                document.getElementById("select-date").style.color = "black";
            });

            document.getElementById("reset-btn").addEventListener("click", function(){
                document.getElementById("select-place").style.color = "#a9a9a9";
                document.getElementById("select-date").style.color = "#a9a9a9";
            });

            // 유효성 검사 용. 실패 시 > input 박스 색상 변경 처리 (빨강)
            document.querySelectorAll("input").forEach(input => {
                input.addEventListener("invalid", () => {
                    document.forms[0].classList.add("was-validated")
                })
            })
        </script>
        
    </body>
</html>