<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 아이디 찾기 -->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/user/find-id.css">
        <title>아이디 찾기</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <section id="find-id-title">
                    <h1>아이디 찾기</h1>
                    <div id="colorBox"></div>
                </section>
                <section id="find-id">
                    <div>
                        <img src="/resources/img/user/find-icon/user.png" alt="아이디 찾기">
                    </div>
                    <form action="/user/findId.do" method="post">
                        <input type="tel" name="user-phone" id="user-phone" placeholder="전화번호를 하이픈(-) 빼고 입력해 주세요." required>
                        <br>
                        <input type="submit" value="아이디 찾기" id="find-id-btn">
                    </form>
                </section>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
            <jsp:include page="/WEB-INF/views/include/asideMovePageBtn.jsp"></jsp:include>
        </div>

        <script>
            document.querySelectorAll("input").forEach(input => {
                input.addEventListener("invalid", () => {
                    document.forms[0].classList.add("was-validated")
                })
            })
        </script>
        
    </body>
</html>