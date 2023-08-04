<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 창덕궁 행사 소개 페이지 -->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/event/description.css">
        <title>창덕궁 행사 소개</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <section id="description-title">
                    <h1>창덕궁</h1>
                    <div id="colorBox"></div>
                </section>
                <section id="short-description">
                    <div id="red-line"></div>
                    <h2>달빛기행</h2>
                    <br><br><br><br>
                    <p>
                        창덕궁 달빛기행은 은은 달빛아래 녹음이 어우러진 창덕궁에서 전문해설사와 함께 궁궐의 곳곳을 관람하며, <br>
                        각 전각에 대한 해설과 전통예술공연을 관람할 수 있는 프로그램입니다.
                        <br><br>
                        창덕궁 정문인 돈화문에서 출발해 진선문 · 인정전 · 희정당 · 낙선재 · 상량정 · 부용지 · 불로문 · 애련정 · 연경당 · 후원 숲길을 이동하며 <br>
                        창덕궁 달빛기행에서만 경험할 수 있는 특별한 감동을 선사할 것입니다.
                    </p>
                </section>
                <section id="image">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="/resources/img/event/cdg/cdg1.jpg" alt="달빛기행 포스터">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/cdg/cdg2.jpg" alt="돈화문">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/cdg/cdg3.jpg" alt="금천교와 진선문">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/cdg/cdg4.jpg" alt="인정전">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/cdg/cdg5.jpg" alt="희정당">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/cdg/cdg6.jpg" alt="낙선재">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/cdg/cdg7.jpg" alt="상량정">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/cdg/cdg8.jpg" alt="부용지">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/cdg/cdg9.jpg" alt="불로문과 애련지">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/cdg/cdg10.jpg" alt="연경당(공연-박접무)">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/cdg/cdg11.jpg" alt="연경당(공연-산조춤)">
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
                            <h4>달빛기행 야간관람 코스 (약100분)</h4>
                            <p>아름다운 창덕궁의 야경을 둘러보며 안내해설을 감상하실 수 있습니다.
                                <br><br>
                                <span class="numbering">①</span> 돈화문(집결, 해산) → <span class="numbering">②</span> 금천교 → <span class="numbering">③</span> 인정전 → <span class="numbering">④</span> 희정당 → <span class="numbering">⑤</span> 낙선재 → <span class="numbering">⑥</span> 상령정(대금연주) → <span class="numbering">⑦</span> 부용지·부용정(거문고연주) → <span class="numbering">⑧</span> 불로문・애련정(가곡) → <span class="numbering">⑨</span> 연경당(전통예술공연) → ⑩ 후원숲길
                            </p>
                        </div>
                    </div>
                    <div class="description">
                        <h3>행사 기간</h3>
                        <div>
                            <h4>6월 21일 ~ 6월 23일</h4>
                            <table>
                                <tr>
                                    <td class="title">시간</td>
                                    <td>18 : 40 | 19 :  40</td>
                                </tr>
                                <tr>
                                    <td class="title">예매 기간</td>
                                    <td>6월 2일 ~ 6월 8일</td>
                                </tr>
                                <tr>
                                    <td class="title">예매 시간</td>
                                    <td>15 : 00 ~</td>
                                </tr>
                            </table>
                            <br>
                            <h4>10월 6일 ~ 10월 10일</h4>
                            <table>
                                <tr>
                                    <td class="title">시간</td>
                                    <td>19 : 20 ~ 23 : 30</td>
                                </tr>
                                <tr>
                                    <td class="title">예매 기간</td>
                                    <td>9월 16일 ~ 9월 25일</td>
                                </tr>
                                <tr>
                                    <td class="title">예매 시간</td>
                                    <td>15 : 00 ~</td>
                                </tr>
                            </table>
                            <br>
                        </div>
                    </div>
                    <div class="description">
                        <h3>오시는 길</h3>
                        <div id="way-to-come">
                            <iframe id="map"
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3161.881779069215!2d126.99028832645487!3d37.5814014232746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca25bce7408e3%3A0xff296b97da565068!2z7LC9642V6raB!5e0!3m2!1sko!2skr!4v1686151958650!5m2!1sko!2skr"
                                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade">
                            </iframe>
                            <div id="how">
                                <h4>지하철</h4>
                                <ul>
                                    <li class="labeling">- 종로3가역(1,3,5호선) 6번 출구에서 도보로 10분</li>
                                    <li class="labeling">- 안국역(3호선) 3번 출구에서 도보로 5분</li>
                                </ul>
                                <br>
                                <h4 style="margin-bottom: 25px;">버스</h4>
                                <ul>
                                    <li class="labeling">- 간선 : 109 151 162 171 172 272 601</li>
                                    <li class="labeling">- 지선 : 7025</li>
                                    <li class="labeling">- 순환 : 90S투어 91S투어</li>
                                    <li class="labeling">- 공항 : 6011</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="description">
                        <h3>행사 문의</h3>
                        <div>
                            <h4>한국문화재재단 창덕궁 달빛기행 담당 02-XXXX-XXXX</h4>
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