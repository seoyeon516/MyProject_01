<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>art image list</title>
</head>
<body>
<c:if test="${ART == null }">
no image.
</c:if>
<c:if test="${ART != null }">

<table width="100%">
<tr><td align="right"><b>${startRow} ~ ${endRow} / ${count }</b>
</td></tr>
</table>
<br/>
<table border="1" width="100%" align="center">
<c:set var="count" value="0"/>

 <c:forEach var="art" items="${ART }">
 <c:if test="${count % 3 == 0 }">
 <tr>
 </c:if>
 <td align="center">
 No. ${art.art_id }
 <a href ="javascript:goView(${art.art_id })">
 ${art.title }</a><br/>
  <img alt="" src="../upload/${art.image }" width="250" height="150">
 ${art.art_date } &nbsp;&nbsp;&nbsp; ${art.user_id }<br/></td> </tr>
 <c:set var="count" value="${count + 1 }"/>
 <c:if test="${count % 3 == 0 }">

 </c:if>

 </c:forEach>
</table>

<c:set var="startPage" value="${currentPage-
(currentPage % 10 == 0 ? 10 :(currentPage % 10))+1}"/>
				<!-- 조건? A : B -->
				<!-- 조건만족시 A --> <!-- 조건불만족시 B -->
<c:set var="endPage" value="${startPage + 9 }"/>
<c:if test="${endPage > pageCount }">
	<c:set var="endPage" value="${pageCount }"/>
</c:if>

<c:if test="${startPage > 10 }">
	<a href="javascript:goPage(${startPage -1 })">[prev]</a>
</c:if>

<c:forEach var="pageNo" begin="${startPage }" end="${endPage }">
	<c:if test="${currentPage == pageNo }">
		<font size="5">
	</c:if>
	<a href="javascript:goPage(${pageNo })">${pageNo }</a>
	<c:if test="${currentPage == pageNo }">
		</font>	<!-- 현재페이지 -->
	</c:if>
</c:forEach>

<c:if test="${endPage < pageCount }">
					<!-- 페이지 개수 -->
	<a href="javascript:goPage(${endPage +1 })">[next]</a>
</c:if>

</c:if>

<script type="text/javascript">
function goPage(pageNo){
	document.move.action="image-list";
	document.move.page.value=pageNo;
	document.move.submit();
}

function goView(art_id){
	document.move.art_id.value = art_id;
	document.move.action="image-read";
	document.move.submit();
}
</script>
<form name="move" method="post">
	<input type="hidden" name="art_id"/>
	<input type="hidden" name="page" value="${currentPage }"/>
</form>
</body>
</html>