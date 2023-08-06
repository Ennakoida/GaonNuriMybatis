<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--공지사항-->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/notice/notice.css">
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
                    <table frame=void>
                        <tr>
                            <th>공지번호</th>
                            <th>공지사항</th>
                            <th>작성일</th>
                        </tr>
                        <c:forEach var="notice" items="${ nList }">
	                        <tr>
	                        	<td>${ notice.noticeNo }</td>
	                        	<td>${ notice.noticeSubject }</td>
	                        	<td>${ notice.noticeDate }</td>
	                        </tr>
                        </c:forEach>
                    </table>

                    <!-- 페이지 전환 버튼  -->
                    <ul id="page">
							${ pageNavi }
                    </ul>
                </section>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/views/include/asideMovePageBtn.jsp"></jsp:include>
        </div>
    </body>
</html>