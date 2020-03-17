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
<c:if test="${empty param.art_id}">
<script type="text/javascript">
alert("削除されました。");
location.href="image-list";
</script>
</c:if>
<c:if test="${ ! empty param.art_id}">
<script type="text/javascript">
alert("IDが間違っています。");
location.href="image-read?art_id="+${param.art_id};
//삭제가 안되면 메뉴가 있는 해당글번호 검색
</script>
</c:if>
</body>
</html>