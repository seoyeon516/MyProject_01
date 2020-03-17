<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ghibli's Room</title>
<script type="text/javascript">
function changeMenu(num, img){
	document.getElementById(num).src = img;
}
function workingClock(){
	var days=["日","月","火","水","木","金","土"];
	var today = new Date();
	var year = today.getFullYear();
	var month = today.getMonth()+1;
	var date = today.getDate();
	var index = today.getDay();
	var day = days[index];
	var hour = today.getHours();
	var min = today.getMinutes();
	var minn = "";
	if(min < 10){
		minn ="0" + min;
	}else{
		minn = min;
	}
	var sec = today.getSeconds();
	var secc = "";
	if(sec < 10){
		secc = "0"+sec;
	}else{
		secc = sec;
	}
	var str = year+"-"+month+"-"+date+" "+day+" "+hour+":"+
	minn+":"+secc;
	document.getElementById("clock").innerHTML=str;
}
function startClock(){
	/* setInterval(함수1 , 시간1) : 이 함수는 시간1이 경과후 */
	/* 함수2을 호출한다. */
	setInterval(workingClock, 1000);
	//1초(1000)가 경과한 후 workingClock함수를 자동으로 호출해줌
}
//#어쩌구 -> id = "어쩌구"
//.저쩌구 -> class = "저쩌구"

</script>
<style type="text/css">

#menu>li{ /*menu의 li에만 적용*/
	float: left;
}
#menu{
	margin-left:auto; margin-right:auto;
	width : 1070px;
	list-style : none;

}
.mainTable {
	margin-left:auto;
	margin-right:auto;
	clear : both; /*위의 float:left의 영향 때문에 무시할수 있도록*/
	background-image : url(../logos/str.jpg);

}

</style>
</head>
<body onload="javascript:startClock()">
<table align="left" >
<tr>
<td>
<script type="text/javascript"></script>
<div id="clock" ></div>
</td>
</tr>

</table><br/><br/>
ToDay: ${applicationScope.CNT } 名<br/>
<h1 align="center"><a href="template.jsp">
<img src = "../logos/title.png" title = "Ghibli's Room"
/></a>
</h1>

<table align="center" border="1" cellpadding="10" class="mainTable">
	<tr>
		<td width="190" valign="top" height="500" >
		<c:choose>
			<c:when test="${sessionScope.user_id == null}">
			<jsp:include page="login.jsp"/>
			</c:when>
			<c:otherwise>
			<jsp:include page="logout.jsp"/>
			</c:otherwise>
		</c:choose>
		<ul>
		<li><a href="template.jsp?BODY=userentry.jsp">New Member</a></li>
		<li><a href="template.jsp?BODY=introduce.jsp">About Ghibli</a></li>
		<li><a href="image-list">Art List</a></li>
		<li><a href="template.jsp?BODY=image_input.jsp">Art Board</a></li>
		<li><a href="qna-list">QnAList</a></li>
		<li><a href="template.jsp?BODY=qna_writeForm.jsp">QnA</a></li>
		</ul>
		</td>
		<td width="650" valign="top">
			<c:choose>
				<c:when test="${param.BODY != null }">
					<jsp:include page="${param.BODY }"/>
				</c:when>
				<c:otherwise>
				<br/><br/><br/><br/><br/>
				<h1 align="center">
				<img src = "../logos/flyingkiki.gif" title = "いらっしゃいませ!"/>
				</h1>
				</c:otherwise>
			</c:choose>

		</td>
	</tr>
</table>
<br/>
<img alt="" src="${initParam.logos }" width="350" height="30">
<br/>
<font size="5">${applicationScope.AD.name }</font><br/>
<img src="${applicationScope.AD.image }"
	alt="" width="150" height="20"/><br/>
<font size="5">${applicationScope.AD.info }</font>
<br/>

</body>
</html>