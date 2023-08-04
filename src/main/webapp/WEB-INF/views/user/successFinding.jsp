<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>${ what } 찾기 성공</title>
	</head>
	<body>
		<script>
			const what = '${ what }';
			const found = '${ found }';
			const url = '${ url }';
			alert(what + " : " + found);
			location.href = url;
		</script>
	</body>
</html>