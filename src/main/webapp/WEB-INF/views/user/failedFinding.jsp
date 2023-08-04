<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>${ what } 찾기 실패</title>
	</head>
	<body>
		<script>
			const what = '${ what }';
			const msg = '${ msg }';
			const url = '${ url }';
			alert(msg);
			location.href = url;
		</script>
	</body>
</html>