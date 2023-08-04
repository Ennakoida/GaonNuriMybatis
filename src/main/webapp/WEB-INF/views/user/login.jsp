<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그인 -->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <link rel="stylesheet" href="/resources/css/user/login.css">
        <title>로그인</title>
    </head>
    <body>
        <div id="container">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <section>
                    <section id="login-title">
                        <h1>로그인</h1>
                        <p>로그인 하시면 홈페이지 내에 다양한 서비스를 이용하실 수 있습니다.</p>
                        <div id="colorBox"></div>
                    </section>
                    <section id="login">
                        <div id="login-input">
                            <form action="/user/login.do" method="post">
                                <input type="text" name="user-id" id="user-id" placeholder="아이디를 입력해 주세요." required> 
                                <br>
                                <input type="password" name="user-pw" id="user-pw" placeholder="비밀번호를 입력해 주세요." required>
                                <br>
                                <input type="submit" value="로그인" id="login-btn">
                                <br>
                                <div>
                                    <label><input type="checkbox" name="stay-signed-in" id="stay-signed-in"> 로그인 상태 유지</label>
                                    <p><a href="/user/findId.do">아이디 찾기</a> / <a href="/user/findPw.do">비밀번호 찾기</a></p>
                                </div>
                            </form>
                        </div>
                        <div id="sns-login">
                            <!-- 각 기업에서 제공하는 표준 logo resource 사용 -->
                            <button id="naver">
                                <div>
                                    <img src="/resources/img/user/sns-logo/naver.png" alt="네이버로 회원가입" style="width: 40px;">
                                    <div>네이버 로그인</div>
                                </div>
                            </button>
                            <button id="kakao">
                                <div>
                                    <img src="/resources/img/user/sns-logo/kakao.png" alt="카카오 로그인" style="width: 34px;">
                                    <div>카카오 로그인</div>
                                </div>
                            </button>
                            <button id="google">
                                <div>
                                    <img src="/resources/img/user/sns-logo/google.png" alt="구글 로그인" style="width: 20px;">
                                    <div>Google 계정으로 로그인</div>
                                </div>
                            </button>
                        </div>
                    </section>
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