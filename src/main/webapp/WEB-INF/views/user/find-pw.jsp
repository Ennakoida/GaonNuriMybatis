<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 비밀번호 찾기 -->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/user/find-pw.css">
        <title>비밀번호 찾기</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <section id="find-pw-title">
                    <h1>비밀번호 찾기</h1>
                    <div id="colorBox"></div>
                </section>
                <section id="find-pw">
                    <div>
                        <img src="/resources/img/user/find-icon/pw.png" alt="비밀번호 찾기">
                    </div>
                    <form action="/user/findPw.do" method="post">
                        <input type="text" name="user-id" id="user-id" placeholder="아이디를 입력해 주세요." required>
                        <br>
                        <input type="tel" name="user-phone" id="user-phone" placeholder="전화번호를 하이픈(-) 빼고 입력해 주세요." required>
                        <br>
                        <label for="new-pw"><input type="checkbox" name="new-pw" id="new-pw" required><div>기입한 전화번호로 새로운 비밀번호를 수신하는 것에 <br>동의합니다.</div></label>
                        <br>
                        <input type="submit" value="비밀번호 찾기" id="find-pw-btn">
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