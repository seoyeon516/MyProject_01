<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>重複確認</title>
	<script type="text/javascript">
	function useridOK(){alert("ok");
		opener.document.frm.user_id.value=
		${param.user_id}
		self.close();
	}
	</script>
</head>
<body>
<form action="useridCheck.do" method="get" name="frm">
ID : <input type="text" name="user_id" value="${user_id }">
<input type = "submit" value="IDcheck"><br/>

<c:if test="${DUP == 'YES' }">
	<script type="text/javascript">
	opener.document.frm.user_id.value="";
	</script>
	${user_id } -> 既に使用中です。
</c:if>
<c:if test="${DUP != 'YES' }">
	${user_id } -> 使用可能です。
	<input type="button" value="使用" onClick="useridOK()"/>
</c:if>
</form>
</body>
</html>