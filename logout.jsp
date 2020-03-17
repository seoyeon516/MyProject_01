<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>log out</title>
</head>
<body>
<form action="logout.do">
接続中 : ${sessionScope.user_id }さん。<br/><br/>
<input type="submit" value="LOGOUT"/>
</form>
</body>
</html>