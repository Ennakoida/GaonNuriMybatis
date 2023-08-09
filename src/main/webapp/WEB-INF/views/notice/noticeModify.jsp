<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/notice/noticeModify.css">
        <title>공지사항</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <section id="notice-modify-title">
                    <h1>공지사항 수정</h1>
                    <div id="colorBox"></div>
                </section>
                <section id="notice-modify">
					<form action="/notice/modify.do" method="post">       
	         			<input type="hidden" name="noticeNo" value="${ notice.noticeNo }">
	                	<div id="notice-subject">
	                		<input type="text" name="notice-subject" placeholder="제목을 입력해주세요." value="${ notice.noticeSubject }">
	                	</div>
	                	<div id="notice-content">
	                		<textarea cols="100" rows="30" name="notice-content" placeholder="내용을 입력해주세요...">${ notice.noticeContent }</textarea>
	                	</div>
	                	<div>
							<input type="submit" value="수정하기">
	                	</div>
                	</form>
                </section>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/views/include/asideMovePageBtn.jsp"></jsp:include>
        </div>
    </body>
</html>