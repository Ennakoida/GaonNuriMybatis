<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 종묘 행사 소개 페이지 -->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/event/description.css">
        <title>종묘 행사 소개</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <section id="description-title">
                    <h1>종묘</h1>
                    <div id="colorBox"></div>
                </section>
                <section id="short-description">
                    <div id="red-line"></div>
                    <h2>묘현례</h2>
                    <br>
                    <h3 style="font-family: 'Chosunilbo_myungjo', sans-serif, serif; color:#b5b5b5">1703 조선의 왕비 문안드립니다.</h3>
                    <br><br><br>
                    <p>
                        ‘묘현례’는 왕실 혼례를 마친 후 조선왕조 역대 왕과 왕비의 신주가 모셔진 종묘를 알현(謁見,지체가 높은 귀한 사람을 찾아가 뵘)하는 의례로, <br>
                        시민배우들이 직접 왕과 왕비, 세자와 세자빈, 상궁 등의 다양한 역할로 직접 참여하여 묘현례를 체험해보는 시민 참여 프로그램입니다.
                        <br><br>
                        조선시대 종묘에서 행해지는 국가 의례 중 왕실 여성이 참여 하는 유일한 행사였던 묘현례, 그 뜻깊은 왕실 행사에 여러분들을 초대합니다.
                    </p>
                </section>
                <section id="image">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="/resources/img/event/jm/jm1.jpg" alt="종묘 묘현례 포스터">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/jm/jm2.jpg" alt="국왕, 왕세자 봉심 준비">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/jm/jm3.jpg" alt="국왕, 왕세자 신실 봉심">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/jm/jm4.jpg" alt="국왕, 왕세자 소차 이동">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/jm/jm5.jpg" alt="왕비, 세자빈 알묘">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/jm/jm6.jpg" alt="왕비, 세자빈 퇴장">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/jm/jm7.jpg" alt="등장인물과 사진 촬영">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/jm/jm8.jpg" alt="제례악기 체험 1">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/jm/jm9.jpg" alt="제례악기 체험 2">
                            </div>
                        </div>
                        
                        <div class="pagination"></div>
                        
                        <div class="prev">
                            <svg width="10" height="15" viewBox="0 0 10 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M9.2625 13.2375L3.5375 7.5L9.2625 1.7625L7.5 0L0 7.5L7.5 15L9.2625 13.2375Z" fill="#A99260" />
                            </svg>
                        
                        </div>
                        <div class="next">
                            <svg width="10" height="15" viewBox="0 0 10 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0.737305 13.2375L6.4623 7.5L0.737305 1.7625L2.4998 0L9.9998 7.5L2.4998 15L0.737305 13.2375Z" fill="#A99260" />
                            </svg>
                        
                        </div>
                        </div>
                        
                        <!-- Styles -->
                        <link href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" rel="stylesheet">
                        <!-- Script -->
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/8.4.6/swiper-bundle.min.js"></script>
                </section>
                <section id="event-description">
                    <div class="description">
                        <h3>프로그램 소개</h3>
                        <div>
                            <h4>국왕, 왕세자 봉심 준비</h4>
                            <p><span class="jm-sub">: 국왕과 왕세자, 문무백관이 국궁사배로 선대왕께 인사를 올림 </span><br>
                                지극한 존경심으로 영령 앞에 몸을 굽히는 것을 국궁이라 하며, 네 번 절하는 것을 사배라고 한다. 절은 한 번 하고 일어나는 것이 아니라 엎드려 한 번 절하고 앉은 채로 다시 머리를 조아리며 절하는 방식으로 네 번을 한다.
                            </p>
                            
                            <h4>국왕, 왕세자 신실 봉심</h4>
                            <p><span class="jm-sub">: 국왕과 왕세자가 선대왕들의 신주가 모셔진 신실을 살핌 </span><br>
                                봉심이란 왕명을 받는 사람 혹은 국왕께서 직접 종묘를 찾아뵙고 신실을 점검하는 의례인데, 봉심만을 위해 종묘를 찾는 경우 외에도 묘현례와 같은 특별행사에서도 신실 봉심이 행해졌다.
                            </p>

                            <h4>국왕, 왕세자 소차 이동</h4>
                            <p><span class="jm-sub">: 문무백관 퇴장 후 국왕과 왕세자 소차로 들어감 </span><br>
                                당시 신하는 왕비와 세자빈의 얼굴을 볼 수 없었기 때문에 문무백관들은 왕비와 세자빈이 입장하기 전 모두 퇴장하였다.
                            </p>

                            <h4>왕비, 세자빈 알묘</h4>
                            <p><span class="jm-sub">: 왕비와 세자빈 선대왕들께 공식적으로 인사를 올림 </span><br>
                                왕비와 세자빈은 신실 봉심 없이 국궁사배만 진행하게 된다. 묘현례 절차 중 작은 부분을 차지하고 있으나 조선시대 종묘에서 행해지는 국가의례 중 왕실 여성이 참여하는 유일한 행사로 매우 깊은 의미를 지니고 있다.
                            </p>

                            <h4>왕비, 세자빈 알묘</h4>
                            <p><span class="jm-sub">: 국왕과 왕세자가 선대왕들의 신주가 모셔진 신실을 살핌 </span><br>
                                봉심이란 왕명을 받는 사람 혹은 국왕께서 직접 종묘를 찾아뵙고 신실을 점검하는 의례인데, 봉심만을 위해 종묘를 찾는 경우 외에도 묘현례와 같은 특별행사에서도 신실 봉심이 행해졌다.
                            </p>

                            <h4>왕비, 세자빈 퇴장</h4>
                            <p><span class="jm-sub">: 인사를 마친 왕비와 세자빈은 동문 밖으로 퇴장 </span><br>
                                국궁사배를 마친 왕비와 세자빈은 동문으로 퇴장하는데, 이때 제례에 참여한 모든 여관(女官) 또한 정전을 비운다. 본 재현행사에서는 왕비, 세자빈의 퇴장 부분이 행사에 참석한 관람객에게 인사하는 장면으로 수정되었다.
                            </p>

                            <h4>등장인물과 사진 촬영</h4>
                            <p><span class="jm-sub">: 국가의례의 복식을 차려입은 시민배우 참가자와의 사진 촬영</span></p>

                            <h4>부대행사</h4>
                            <p><strong>제례악기 체험</strong> : 종묘제례에 사용되는 악기(박, 축, 어, 편경 절고) 전시 및 체험</p>
                        </div>
                    </div>
                    <div class="description">
                        <h3>행사 기간</h3>
                        <div>
                            <h4>7월 10일 ~ 7월 16일</h4>
                            <table>
                                <tr>
                                    <td class="title">시간</td>
                                    <td>11 : 00 ~ 20 : 50</td>
                                </tr>
                                <tr>
                                    <td class="title">예매 기간</td>
                                    <td>6월 28일 ~ 7월 3일</td>
                                </tr>
                                <tr>
                                    <td class="title">예매 시간</td>
                                    <td>16 : 00 ~</td>
                                </tr>
                            </table>
                            <br>
                            <h4>8월 14일 ~ 8월 17일</h4>
                            <table>
                                <tr>
                                    <td class="title">시간</td>
                                    <td>11 : 00 ~ 20 : 50</td>
                                </tr>
                                <tr>
                                    <td class="title">예매 기간</td>
                                    <td>8월 2일 ~ 8월 5일</td>
                                </tr>
                                <tr>
                                    <td class="title">예매 시간</td>
                                    <td>16 : 00 ~</td>
                                </tr>
                            </table>
                            <br>
                        </div>
                    </div>
                    <div class="description">
                        <h3>오시는 길</h3>
                        <div id="way-to-come">
                            <iframe id="map"
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12647.523586041023!2d126.98256352109549!3d37.581422204113984!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2d85a1cbacf%3A0x24dfda0247e6e153!2z7KKF66yY!5e0!3m2!1sko!2skr!4v1686151989410!5m2!1sko!2skr"
                                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade">
                            </iframe>
                            <div id="how">
                                <h4>지하철</h4>
                                <ul>
                                    <li class="labeling">- 종로 3가역 도보 약 5분(1호선-11번, 3호선-8번, 5호선-8번 출구)</li>
                                </ul>
                                <br>
                                <h4 style="margin-bottom: 25px;">버스</h4>
                                <ul>
                                    <li class="labeling">- 종로4가. 종묘(정류장 번호 : 01-017/01-018)</li>
                                    <li class="labeling">- 종로4가. 종묘공원(정류장 번호 : 01-539)</li>
                                </ul>
                                <br>
                                <h4>주차 : 종묘 공영주차장(주차비 본인부담) 이용 가능</h4>
                            </div>
                        </div>
                    </div>
                    <div class="description">
                        <h3>행사 문의</h3>
                        <div>
                            <h4>한국문화재재단 종묘 묘현례 담당 02-XXXX-XXXX</h4>
                            <ul>
                                <li class="labeling">※ 행사 기간은 추후 상황에 따라 변동될 수 있습니다.</li>
                                <li class="labeling">※ 행사에 대한 기타 안내사항(우천취소 등)은 [열린 마당] 메뉴에서 확인 가능 합니다.</li>
                            </ul>
                        </div>
                    </div>
                </section>
            </main>

            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/views/include/asideMovePageBtn.jsp"></jsp:include>
        </div>

        <script>
	        const swiper = new Swiper(".swiper", {
	            slidesPerView: 4,
	            spaceBetween: 50,
	            loop: true,
	            // grabCursor: true,
	            centeredSlides: true,
	            slideActiveClass: "active",
	            navigation: {
	                nextEl: ".next",
	                prevEl: ".prev"
	            },
	            pagination: {
	                el: ".pagination",
	                clickable: true
	            },
	            autoplay: {
	                enabled: true,
	                delay: 5000
	            }
	        });
        </script>
    </body>
</html>