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
<c:if test="${empty art }"><!-- ${art_board == null} 과 같은 의미 -->
存在しません。
</c:if>
<c:if test="${ ! empty art }">
<table width="100%" border="1">
	<tr><td>Title</td><td>${art.title }</td></tr>
	<tr><td>By</td><td>${art.user_id}</td></tr>
	<tr><td colspan="2" align="center">
	<img src ="../upload/${art.image }" alt="" width="350" height="300"/></td>
	</tr>
	<tr><td>Content</td><td>${art.content }</td>
	</tr>
	<tr><td colspan="2">

	<a href="javascript:goModify()">[Update.]</a>
	<a href="javascript:goDelete()">[Delete.]</a>
	<a href="image-list">[List.]</a>
	</td>
	</tr>
</table>
</c:if>

<form name="move" method="post"> <!-- 스크립트가 쓰는 폼 -->
	<input type="hidden" name="art_id"
			value="${art.art_id }"/>
<%-- 	<input type="hidden" name="parentid"
			value="${art.artid }"/>
					<!-- 원글의 글번호 -->
	<input type="hidden" name="groupid"
			value="${art.groupid }"/> --%>
</form>

<script type="text/javascript">

function goDelete(){//삭제
//	document.move.art_id.value = art_id;
	document.move.action="image-delete";
	document.move.submit();
}
function goModify(){//수정
	document.move.action="image-update";
	document.move.submit();
}


</script>

</body>
</html>