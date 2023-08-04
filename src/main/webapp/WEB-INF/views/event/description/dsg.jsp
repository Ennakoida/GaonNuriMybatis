<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 덕수궁 행사 소개 페이지 -->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/event/description.css">
        <title>덕수궁 행사 소개</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <section id="description-title">
                    <h1>덕수궁</h1>
                    <div id="colorBox"></div>
                </section>
                <section id="short-description">
                    <div id="red-line"></div>
                    <h2>밤의 석조전</h2>
                    <br>
                    <h3 style="font-family: 'Chosunilbo_myungjo', sans-serif, serif; color:#b5b5b5;">오얏꽃 흩날리는 봄밤, 대한제국 황실의 문이 열립니다.</h3>
                    <br><br><br>
                    <p>
                        황제의 궁궐, 덕수궁에서 전문 해설사와 함께 대한제국 황실 일상을 나누며 아름다운 석조전의 정취를 품어보세요. <br><br>
                        전문 해설사와 석조전에 담긴 황실의 역사를 만나고, 야외 테라스 카페에 준비된 가배차(커피)와 서양 디저트를 맛보며, <br>
                        귀빈을 맞이하던 접견실에서 뮤지컬 공연 관람까지 궁궐의 낭만과 감동이 있는 덕수궁 석조전의 작은 연회에 여러분을 초대합니다.
                    </p>
                </section>
                <section id="image">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="/resources/img/event/dsg/dsg1.png" alt="밤의 석조전 포스터">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/dsg/dsg2.jpg" alt="석조전 야간 탐방 1">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/dsg/dsg3.jpg" alt="석조전 야간 탐방 2">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/dsg/dsg4.jpg" alt="석조전 테라스 카페 체험 1">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/dsg/dsg5.jpg" alt="석조전 테라스 카페 체험 2">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/dsg/dsg6.jpg" alt="창작뮤지컬 <손탁호텔> 공연 1">
                            </div>
                            <div class="swiper-slide">
                                <img src="/resources/img/event/dsg/dsg7.jpg" alt="창작뮤지컬 <손탁호텔> 공연 2">
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
                            <h4>석조전 야간 탐방</h4>
                            <p>황제의 궁궐 덕수궁에서 이색적인 모습과 특별한 사연을 가진 공간 석조전. 밤빛이 더해진 이 곳, 석조전에서 전문 해설가와 함께 석조전에 담긴 대한제국 황실의 역사를 만나보세요.</p>
                            
                            <h4>석조전 테라스 카페 체험</h4>
                            <p>석조전 테라스에 특별한 공간을 마련하였습니다. 고종 황제가 즐겼던 가배(커피)와 디저트를 음미하며 석조전의 밤이 선사하는 맛과 멋을 즐겨보세요.</p>

                            <h4>창작뮤지컬 <손탁호텔> 공연</h4>
                            <p>궁에서 외국인을 위한 왕실 연회를 주관하고 국내외 귀빈들에게 서양 요리를 대접한 미지의 여성, 손탁여사. 대한제국 시기, 음악에 실어 전하는 그녀의 이야기를 들어보세요.</p>
                        </div>
                    </div>
                    <div class="description">
                        <h3>행사 기간</h3>
                        <div>
                            <h4>6월 2일 ~ 6월 11일</h4>
                            <table>
                                <tr>
                                    <td class="title">시간</td>
                                    <td>18 : 40 | 19 :  40</td>
                                </tr>
                                <tr>
                                    <td class="title">예매 기간</td>
                                    <td>5월 21일 ~ 5월 28일</td>
                                </tr>
                                <tr>
                                    <td class="title">예매 시간</td>
                                    <td>14 : 00 ~</td>
                                </tr>
                            </table>
                            </table>
                            <br>
                        </div>
                    </div>
                    <div class="description">
                        <h3>오시는 길</h3>
                        <div id="way-to-come">
                            <iframe id="map"
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.5438642980466!2d126.97257117645422!3d37.56580912416875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca28d3199c531%3A0x7a2d35df0efd2d8!2z642V7IiY6raB!5e0!3m2!1sko!2skr!4v1686151846558!5m2!1sko!2skr"
                                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade">
                            </iframe>
                            <div id="how">
                                <h4>지하철</h4>
                                <ul>
                                    <li class="labeling">- 시청역</li>
                                    <li class="labeling">- 을지로입구역</li>
                                    <li class="labeling">- 광화문역</li>
                                </ul>
                                <br>
                                <h4 style="margin-bottom: 25px;">버스 : 시청역, 시청덕수궁, 시청앞.덕수궁, 서소문, 시청.서소문청사 등</h4>
                                <h4>주차 : 덕수궁에는 주차시설이 없으니, 대중교통을 이용하여 주시기 바랍니다.</h4>
                            </div>
                        </div>
                    </div>
                    <div class="description">
                        <h3>행사 문의</h3>
                        <div>
                            <h4>한국문화재재단 밤의석조전 담당 02-XXXX-XXXX</h4>
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