<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 요청</title>
	</head>
	<body>
		<script>
			const result = '${ msg }';
			const url = '${ url }';
			alert(result + " 서비스를 이용하려면 로그인이 필요합니다. 로그인 페이지로 이동합니다.");
			location.href = url;
		</script>
	</body>
</html>