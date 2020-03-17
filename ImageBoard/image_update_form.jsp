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
	var result=confirm("変更しますか。");
	if(result == false) return false;
}
</script>

<form action="update.do" method="post"
enctype="multipart/form-data" onSubmit="return validate(this)">
<input type="hidden" name="art_id" value="${art.art_id }"/>
	<!-- 글번호가 필요하지만 수정할수 없도록 hidden한다 -->

<table width="100%" border="1">
<tr><td>Title</td><td><input type="text" name="title"
	value="${art.title }"/></td></tr>

<tr><td>Image</td><td><input type="file"
	name="image"/><br/>
	<img src="../upload/${art.image }" alt=""
	width="350" height="300"/></td></tr>
<tr><td>Content</td><td><textarea rows="8" cols="40"
	name="content">${art.content }</textarea>
</td></tr>
<tr><td colspan="2">
<input type="submit" value="UPDATE"/>
<input type="button" value="CANCEL"
	onClick="javascript:history.go(-1)"/>
</td></tr>
</table>

</form>
</body>
</html>