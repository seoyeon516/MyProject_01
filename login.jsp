<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login page</title>
</head>
<body>
<c:if test="${param.INTRO == 'yes' }">
ログイン後、サービス利用が可能です。</c:if>
<c:if test="${param.STAFF == 'yes' }">
管理者でログイン後、サービス利用が可能です。</c:if>
<c:if test="${param.STAFF == 'no' }">
管理者用IDがありません。 もう一度確認をお願いします。</c:if>

<form action="login.do" method="post">
ID　: <input type ="text" name="user_id"
	placeholder="IDを入力"/><br/>
P/W: <input type ="password" name="password"
	placeholder="PASSWORDを入力"/><br/><br/>
<input type="submit" value="LOGIN"/>
</form>
</body>
</html>