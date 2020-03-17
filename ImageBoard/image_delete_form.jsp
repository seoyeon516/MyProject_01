<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
function validate(form){
	var result=confirm("削除しますか?");
	if(result == false) return false;
}
</script>
<h3>削除する内容</h3>
<form action="delete.do" method="post"
		onSubmit="return validate(this)">
<input type="hidden" name="art_id" value="${art.art_id }"/>
<table width="80%" height="200" align="center" border="1">
<tr><td width="150" align="center">Title</td><td>${art.title }</td></tr>
<tr><td align="center">By</td><td>${art.user_id}</td></tr>

<tr><td align="center">Image</td><td><img alt="" width="100"
 src="../upload/${art.image }"/>
</td></tr>
<tr><td colspan="2">
<input type="submit" value="DELETE"/>
<input type="button" value="CANCEL"
		onClick="javascript:history.go(-1)"/></td></tr>
</table>
</form>
</body>
</html>