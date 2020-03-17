<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>QnA List</title>

</head>
<body>

<table width="100%">
<tr><td align="right"><b>${startRow} ~ ${endRow} / ${count }</b>
</td></tr>
</table>
<br/>
<table width="100%" border="1">
	<tr>
	<td width="30">No</td><td>title</td><td width="130">user</td><td width="130">date</td>
</tr>
<c:set var="count" value="0"/>

<c:forEach var="qna" items="${QnA }">
<c:if test="${count % 3 == 0 }">
<!-- <tr><td>No</td><td>title</td><td>ID</td><td>Date</td></tr> -->
<tr>
</c:if>
	<td>${qna.qna_id }</td>
	<td><a href="javascript:goView(${qna.qna_id })">
	${qna.status }</a></td>
	<td>${qna.user_id }</td>
	<td>${qna.qna_date }</td>
</tr>

<c:set var="count" value="${count + 1 }"/>
<c:if test="${count % 3 == 0 }"></c:if>
</c:forEach>
</table>

<c:set var="startPage" value="${currentPage-
(currentPage % 10 == 0 ? 10 :(currentPage % 10))+1 }"/>
<c:set var="endPage" value="${startPage +9}"/>
<c:if test="${endPage > pageCount }">
<c:set var="endPage" value="${pageCount }"/>
</c:if>
<c:if test="${startPage > 10 }">
<a href="javascript:goPage(${startPage -1 })">[prev]</a>
</c:if>
<c:forEach var="pageNo" begin="${startPage }" end="${endPage }">
<c:if test="${currentPage == pageNo }"><font size="5"></c:if>
<a href="javascript:goPage(${pageNo })">${pageNo }</a>
<c:if test="${currentPage == pageNo }"></font></c:if>
</c:forEach>
<c:if test="${endPage < pageCount }">
<a href="javascript:goPage(${endPage +1 })">[next]</a>
</c:if>

<script type="text/javascript">
function goPage(pageNo){
	document.move.action="qna-list";
	document.move.page.value=pageNo;
	document.move.submit();
}

function goView(qna_id){
	document.move.qna_id.value = qna_id;
	document.move.action="qna-read";
	document.move.submit();
}
</script>
<form name="move" method="post">
	<input type="hidden" name="qna_id"/>
	<input type="hidden" name="page" value="${currentPage }"/>
</form>

</form>
</body>
</html>