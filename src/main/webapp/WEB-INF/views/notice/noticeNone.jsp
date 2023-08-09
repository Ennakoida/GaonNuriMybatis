<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--공지사항-->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/notice/noticeNone.css">
        <title>공지사항</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <section id="notice-title">
                    <h1>공지사항</h1>
                    <div id="colorBox"></div>
                </section>
                <!-- 공지사항 -->
                <section id="notice">
                
                	<div id="notice-menu">
	                    <!-- 작성하기 버튼 -->
						<!-- 관리자 계정(admin)만 작성하기 버튼 보임  -->
						<c:if test="${ sessionScope.userId eq 'admin' }">
		                    <div id="write-notice">
			                    <button onclick="location.href='/notice/writeNotice.do'">작성하기</button>
		                    </div>
	                    </c:if>
	                    <c:if test="${ sessionScope.userId ne 'admin' }">
		                    <div id="write-notice" style="visibility: hidden;">
			                    <button onclick="location.href='/notice/writeNotice.do'">작성하기</button>
		                    </div>
	                    </c:if>
						<!--  검색창 -->
						<div id="search-notice">
		                    <form name="searchForm" action="/notice/search.do" method="get" id="search-notice-input">
		                    	<input type="search" name="notice-search" placeholder="검색어 입력"  value=${ noticeSearch }>
		                    	<div id="search-notice-icon">
			                    	<a href="javascript:void(0)" onclick="getSearchNotice();"><img alt="검색" src="/resources/img/search-icon.png"></a>
		                    	</div>
		                    </form>
						</div>
                	</div>
                    
                    <table frame=void>
                        <tr>
                            <th>공지번호</th>
                            <th>공지사항</th>
                            <th>작성일</th>
                        </tr>
                        <tr>
                        	<td colspan="3">목록이 존재하지 않습니다.</td>
                        </tr>
                    </table>
                </section>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/views/include/asideMovePageBtn.jsp"></jsp:include>
        </div>
        <script>
        	const getSearchNotice = () => {
        		searchForm.submit();
        	}
        </script>
    </body>
</html>