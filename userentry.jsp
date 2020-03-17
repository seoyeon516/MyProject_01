<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NEW MEMBER!</title>
<script type="text/javascript">
function idCheck(){
	if(document.frm.user_id.value == ""){
		alert("!! アイディーを入力してください。 !!");
		document.frm.user_id.focus();
		return;
	}
	var url="idCheck.jsp?user_id="+document.frm.user_id.value;
	window.open(url,"_blank_","width=450, height=200");
}

function formCheck(form){
	if(form.NAME.value == ""){
		alert("!! 名前を入力してください。 !!");
		form.NAME.focus();
		return false;
	}
	if(form.PASSWORD.value == ""){
		alert("!! Passwordを入力してください。 !!");
		form.PASSWORD.focus();
		return false;
	}
	//라디오 버튼은 배열로 처리. 자바스트립트에서
	if(!form.SEX[0].checked && !form.SEX[1].checked){
	//↑ ! ->선택이 안되있으면
	alert("!! 性別を入力してください。 !!");
	form.SEX[0].focus();
	return false;
	}
	//select항목 (복수개의 데이타라서 선택한 위치를 알아야 함.)

	if(confirm(" 加入を進行しましょうか。 ")){
		form.submit();
	}else{
		return false;
	}
}
</script>
</head>
<body>
<h2 align="center">personal information</h2>
<form action="entry.do" method="post" name="frm" onSubmit="return formCheck(this)">
<div id="A" align="left">
名前: <input type="text" name="name"/><br/>
アイディー: <input type="text" name="user_id"/>
<input type="button" value="IDcheck" onClick="idCheck()"/><br/>
Password: <input type="password" name="password"/><br/>
性別: 男<input type="radio" name="sex" value="男"/>
&nbsp; 女<input type="radio" name="sex" value="女"/><br/>
E-mail: <input type="text" name="email"/><br/>
 職業: <select name="job">
	<option>--選んでぐださい。--</option>
	<option>学生</option>
	<option>主婦</option>
	<option>会社員</option>
	<option>無職</option>
	<option>..その他</option>
	</select><br/>
	一番好きなジブリ映画:
	<select name="movie">
	<option>--選んでぐださい。--</option>
	<option>風の谷のナウシカ</option>
	<option>天空の城ラピュタ</option>
	<option>となりの トトロ </option>
	<option>火垂るの墓</option>
	<option>魔女の宅急便</option>
	<option>紅の豚</option>
	<option>平成狸合戦ぽんぽこ</option>
	<option>耳をすませば</option>
	<option>もののけ姫</option>
	<option>千と千尋の神隠し</option>
	<option>猫の恩返し</option>
	<option>ハウルの動く城</option>
	<option>崖の上のポニョ</option>
	<option>..その他</option>
	</select>
	<br/>
<input type="submit" value="加入"/>
<input type="reset" value="取り消し"/>
</div>
</form>
</body>
</html>