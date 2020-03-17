<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function validate(form){

	if(confirm("質問を登録しますか?")){

	}else{
		return false;
	}
}
</script>
</head>
<body>
<form action="write.do" method="post">

<input type="hidden" name="order_id" value="${qna.order_id +1 }" />
<c:if test="${ ! empty qna.group_id }">
<input type="hidden" name="group_id" value="${param.group_id }"/>
</c:if>

<c:if test="${ ! empty qna.parent_id }">
<input type="hidden" name="parent_id" value="${param.parent_id }"/>
</c:if>

<br/><br/><br/>
<table border="1" width="100%" align="center">
<tr><td>タイトル</td>
	<td><input type="text" name="status" size="40"/></td>
</tr>
<tr><td>内容</td><td>
	<textarea name="content" rows="8" cols="40"></textarea></td></tr>
<tr><td colspan="2">
<input type="submit" value="登録"/></td>
<td colspan="2">
<input type="reset" value="取り消し"/></td></tr>
</table>
</form>
</body>
</html>