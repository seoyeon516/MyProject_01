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
<%-- <c:if test="${empty qna }"><!-- ${qna == null} 과 같은 의미 -->
存在しません。T.T
</c:if> --%>
<%-- <c:if test="${ ! empty qna }"> --%>
<br/><br/>


<table width="100%" border="1">

	<tr><td width="150">No. ${qna.qna_id }</td>
	<td><b>${qna.status }</b></td></tr>
	<tr><td width="30">By</td><td><b>${qna.user_id}</b></td>
		<td width="50">Date</td><td><b>${qna.qna_date }</b></td></tr>
	<tr><td  colspan="4" height="100" align="center"><b>${qna.content }</b></td><tr>

	<tr><td  colspan="4" height="50">
	<a href="javascript:goReply()"><font color="red">[Re.]</font></a>
	<a href="qna-list"><font color="green">[List.]</font></a>
	</td>
	</tr>
</table>
<%-- </c:if> --%>

<form name="move" method="post"> <!-- 스크립트가 쓰는 폼 -->
	<input type="hidden" name="qna_id"
			value="${qna.qna_id }"/>
	<input type="hidden" name="parent_id"
			value="${qna.qna_id }"/>
					<!-- 원글의 글번호 -->
	<input type="hidden" name="group_id"
			value="${qna.group_id }"/>
</form>

<script type="text/javascript">
function goReply(){
	document.move.action="write-form";
	document.move.submit();
}
</script>

</body>
</html>