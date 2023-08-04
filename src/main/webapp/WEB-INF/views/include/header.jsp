<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
    <!-- 로고 -->
    <div id="logo">
        <h1><a href="/index.jsp">가온누리</a></h1>
    </div>
    <!-- 메인 네비게이션 -->
    <nav id = "main-nav">
        <ul>
            <li class="main-nav">
                행사 소개
                <ul id="description-menu">
                    <a href="/event/gbgDescription.do"><li>경복궁</li></a>
                    <a href="/event/dsgDescription.do"><li>덕수궁</li></a>
                    <a href="/event/cggDescription.do"><li>창경궁</li></a>
                    <a href="/event/cdgDescription.do"><li>창덕궁</li></a>
                    <a href="/event/jmDescription.do"><li>종묘</li></a>
                </ul>
            </li>
            <li class="main-nav"><a href="/event/reservation.do?userId=${ sessionScope.userId }">행사 예매</a></li>
            <li class="main-nav"><a href="/hanbok/rental.do">한복 대여</a></li>
            <li class="main-nav"><a href="#">셔틀 버스</a></li>
            <li class="main-nav">열린 마당
                <ul id="community-menu">
                    <a href="/notice/notice.do?currentPage=1"><li>공지사항</li></a>
                    <a href="#"><li>Q&A</li></a>
<!--                                 <a href="#"><li>마이페이지</li></a> -->
                </ul>
            </li>
        </ul>
    </nav>

    <!-- 로그인, 회원가입, 한국어 네비게이션 -->
    <nav id="sub-nav">
        <ul>
        	<c:if test="${ sessionScope.userId eq null }">
            	<li class="sub-nav"><a href="/user/login.do">로그인</a></li>
            	<li class="sub-nav"><a href="/user/enroll.do">회원가입</a></li>
            </c:if>
            <c:if test="${ sessionScope.userId ne null }">
            	<li class="sub-nav"><a href="javascript:void(0)" onclick="checkLogout();">로그아웃</a></li>
            	<li class="sub-nav"><a href="/user/myInfo.do">마이페이지</a></li>
            </c:if>
<!--                         <li class="sub-nav"><a href="/user/enroll.do">회원가입</a></li> -->
            <li class="sub-nav">한국어 ▾
                <ul id="LNG-menu">
                    <li>한국어</li>
                    <li>English</li>
                    <li>日本語</li>
                </ul>
            </li>
        </ul>
    </nav>
</header>
<script>
	function checkLogout() {
		const userId = '${ sessionScope.userId }';
		if(confirm("로그아웃하시겠습니까?")){
			alert("로그아웃에 성공했습니다.");
			location.href = "/user/logout.do?userId=" + userId;
		}
		
	}
</script>