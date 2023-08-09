<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--공지사항-->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/notice/noticeDetail.css">
        <title>공지사항</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <section id="detail-title">
                    <h1>공지사항</h1>
                    <div id="colorBox"></div>
                </section>
                <!-- 공지사항 -->
                <section id="detail">
                
                	<!-- 관리자가 아닐 경우 공지사항 수정, 삭제 불가능 -->
         			<c:if test="${ sessionScope.userId ne 'admin' }">
	                    <div id="detail-button" style="visibility: hidden;">
		                    <button onclick="location.href='/notice/modify.do?noticeNo=${ notice.noticeNo }'" id="modify-detail">수정하기</button>
		                    <button onclick="deleteCheck()" id="delete-detail">삭제하기</button>
                		</div>
                    </c:if>
                    <c:if test="${ sessionScope.userId eq 'admin' }">
	                  	<div id="detail-button">
		                    <button onclick="location.href='/notice/modify.do?noticeNo=${ notice.noticeNo }'" id="modify-detail">수정하기</button>
		                    <button onclick="deleteCheck()" id="delete-detail">삭제하기</button>
                		</div>
                    </c:if>
					<table>
						<tr>
							<td class="detail-top">${ notice.noticeNo }</td>
							<td class="detail-top">${ notice.noticeSubject }</td>
							<td class="detail-top">${ notice.noticeDate }</td>
							<td class="detail-top">${ notice.viewCount }</td>
						</tr>
						<tr>
							<td colspan="4" id="detail-content" style="white-space:pre;">${ notice.noticeContent }</td>
						</tr>
					</table>
					<div>
						<button onclick="location.href='/notice/notice.do'">목록으로</button>
                	</div>
                </section>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/views/include/asideMovePageBtn.jsp"></jsp:include>
        </div>
        <script>
        	const getSearchNotice = () => {
        		searchForm.submit();
        	}
        	
        	const deleteCheck = () => {
				const noticeNo = '${ notice.noticeNo }';
				if(confirm("삭제하시겠습니까?")){
					location.href = "/notice/delete.do?noticeNo=" + noticeNo;
				}
			}
        </script>
    </body>
</html>