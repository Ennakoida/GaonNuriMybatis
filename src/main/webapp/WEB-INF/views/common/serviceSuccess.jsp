<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>${ msg } 성공</title>
	</head>
	<body>
		<script>
			const result = '${ msg }';
			const url = '${ url }';
			alert(result + "에 성공했습니다.");
			location.href = url;
		</script>
	</body>
</html>