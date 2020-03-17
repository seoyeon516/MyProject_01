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

	if(confirm("イメージを登録しますか?")){

	}else{
		return false;
	}
}
</script>
</head>
<body>
<form action="image.do" method="post"
onSubmit="return validate(this)" enctype="multipart/form-data">

<br/><br/><br/>

<table border="1" width="100%">
<tr><td>タイトル</td>
	<td><input type="text" name="title" size="40"/></td>
</tr>

<tr><td>イメージ</td>
	<td><input type="file" name="image"/></td></tr>

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