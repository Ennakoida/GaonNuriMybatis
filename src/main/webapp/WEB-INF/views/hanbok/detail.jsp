<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 한복 대여 상세 페이지 -->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/hanbok/detail.css">
        <title>한복 대여 상세 페이지</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <section id="detail-title">
                    <!-- 선택한 대여 상품 이름 -->
                    <h1><span style="color: #EA5455;">[ 여성용 ]</span> 여름 한복 세트</h1>
                    <div id="colorBox"></div>
                </section>
                <section id="selected">
                    <!-- 대표 사진 -->
                    <img src="/resources/img/hanbok/rentals/hanbok1.jpg" alt="여름 한복 세트">
                    <!-- 옵션 선택 -->
                    <div id="select-option">
                        <form action="/hanbok/detail.do" method="post">
                        	<c:if test="${ sessionScope.userId ne null }">
                        		<input type="hidden" name="userId" value="${ sessionScope.userId }">
                        	</c:if>
                        	<input type="hidden" name="rentalPlace" value="${ hanbok.rentalPlace }">
                        	<input type="hidden" name="rentalDate" value="${ hanbok.rentalDate }">
                            <label for="top-color">상의 색상</label><br>
                            <select name="top-color" id="top-color" required>
                                <option value="" disabled selected hidden>옵션 선택</option>
                                    <option value="분홍색">분홍색</option>
                                    <option value="빨간색">빨간색</option>
                                    <option value="노란색">노란색</option>
                                    <option value="옥색">옥색</option>
                                    <option value="하늘색">하늘색</option>
                                    <option value="남색">남색</option>
                                    <option value="보라색">보라색</option>
                                    <option value="흰색">흰색</option>
                                    <option value="검은색">검은색</option>
                            </select>
                            <br>
                            <label for="top-size">상의 사이즈</label><br>
                            <select name="top-size" id="top-size" required>
                                <option value="" disabled selected hidden>옵션 선택</option>
                                    <option value="55">55</option>
                                    <option value="66">66</option>
                                    <option value="77">77</option>
                                    <option value="88">88</option>
                                    <option value="99">99</option>
                                    <option value="110">110</option>
                                    <option value="120">120</option>
                            </select>
                            <br>
                            <label for="pants-color">하의 색상</label><br>
                            <select name="pants-color" id="pants-color" required>
                                <option value="" disabled selected hidden>옵션 선택</option>
                                    <option value="분홍색">분홍색</option>
                                    <option value="빨간색">빨간색</option>
                                    <option value="노란색">노란색</option>
                                    <option value="옥색">옥색</option>
                                    <option value="하늘색">하늘색</option>
                                    <option value="남색">남색</option>
                                    <option value="보라색">보라색</option>
                                    <option value="흰색">흰색</option>
                                    <option value="검은색">검은색</option>
                            </select>
                            <br>
                            <label for="pants-size">하의 사이즈</label><br>
                            <select name="pants-size" id="pants-size" required>
                                <option value="" disabled selected hidden>옵션 선택</option>
                                    <option value="55">55</option>
                                    <option value="66">66</option>
                                    <option value="77">77</option>
                                    <option value="88">88</option>
                                    <option value="99">99</option>
                                    <option value="110">110</option>
                                    <option value="120">120</option>
                            </select>
                            <br>
                            <label for="accessories">장신구 (선택)</label><br>
                            <select name="accessories" id="accessories">
                                <option value="" disabled selected hidden>장신구 선택</option>
                                    <option value="비녀">비녀</option>
                                    <option value="뒷꽃이">뒷꽃이</option>
                                    <option value="갓">갓</option>
                                    <option value="노리개">노리개</option>
                                    <option value="버선">버선</option>
                                    <option value="꽃신">꽃신</option>
                                    <option value="자수 손가방">자수 손가방</option>
                                    <option value="부채">부채</option>
                            </select>
                            <br>
                            <div>
                                <h3>가격</h3>
                                <h3>89,000원</h3>
                            </div>
                            <div>
                                <img src="/resources/img/hanbok/heart.png" alt="찜하기(안됨)"">
                                <input type="submit" value="대여하기 >" id="submit-btn">
                            </div>
                        </form>
                    </div>
                </section>
                <!-- 상품 상세 설명 -->
                <section id="detail">
                    <div>
                        <h2>상품 상세 설명</h2>
                        <div id="detail-img">
                            <img src="/resources/img/hanbok/detail/detail1.jpg" alt="여름 한복 세트 상세 이미지 1"> 
                            <img src="/resources/img/hanbok/detail/detail3.jpg" alt="여름 한복 세트 상세 이미지 2"> 
                        </div>
                        <!-- 선택한 한복에 대한 상세 설명 및 주의 문구 -->
                        <p>
                            얇은 소재로 시원함과 유려한 선을 돋보인 한복입니다.<br>
                            하루 종일 착용해도 불편함 하나 없는 쾌적하고 부드러운 착용감이 더욱 멋진 날을 만들어줍니다. <br><br>
                            <em><span style="color: #EA5455;">※</span> 유의사항 : 얼룩이 졌을 경우, 세탁하지 마시고 즉시 대여하신 지점으로 가져와주세요. 새로운 한복으로의 교체를 도와드리겠습니다.</em>
                        </p>
                    </div>
                </section>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/views/include/asideMovePageBtn.jsp"></jsp:include>
        </div>

        <script>
            // input 박스 내부 글씨 색 변경 용
            document.getElementById("top-color").addEventListener("change", function(){
                document.getElementById("top-color").style.color = "black";
            });

            document.getElementById("top-size").addEventListener("change", function(){
                document.getElementById("top-size").style.color = "black";
            });

            document.getElementById("pants-color").addEventListener("change", function(){
                document.getElementById("pants-color").style.color = "black";
            });

            document.getElementById("pants-size").addEventListener("change", function(){
                document.getElementById("pants-size").style.color = "black";
            });

            document.getElementById("accessories").addEventListener("change", function(){
                document.getElementById("accessories").style.color = "black";
            });

            // 유효성 검사 용. 실패 시 > input 박스 색상 변경 처리 (빨강)
            document.querySelectorAll("select").forEach(input => {
                input.addEventListener("invalid", () => {
                    document.forms[0].classList.add("was-validated")
                })
            })
        </script>
        
    </body>
</html>