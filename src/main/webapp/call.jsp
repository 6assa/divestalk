<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DivesTalk  電話画面</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<h2>電話</h2>
	<form name="phonenumber">
	<input class="phonenumber" id="phonenumber" type="tel" name="outputNum" placeholder="20" disabled>
	<p>
		<label for="model">モードを選択してください：</label> 
		<select id="model" name="model">
			<option selected value="callText.jsp" >文字音声</option>
			<option value="callVideo.jsp" >ビデオ</option>
		</select>
	<div class="num-body">
		<input class="link-button" type="button" name="inputNum" value="1" onClick="addTF(this.value)"> <input
			type="button" class="link-button" name="inputNum" value="2" onClick="addTF(this.value)"> <input type="button"
			name="inputNum" class="link-button" value="3" onClick="addTF(this.value)">
	</div>
	<div class="num-body">
		<input type="button" class="link-button" name="inputNum" value="4" onClick="addTF(this.value)"> <input
			type="button" class="link-button" name="inputNum" value="5" onClick="addTF(this.value)"> <input type="button"
			name="inputNum" class="link-button" value="6" onClick="addTF(this.value)">
	</div>
	<div class="num-body">
		<input type="button" class="link-button" name="inputNum" value="7" onClick="addTF(this.value)"> <input
			type="button" class="link-button" name="inputNum" value="8" onClick="addTF(this.value)"> <input type="button"
			name="inputNum" class="link-button" value="9" onClick="addTF(this.value)">
	</div>
	<div class="num-body">
		<input type="button" name="inputNum" class="link-button" value="*" onClick="addTF(this.value)"> <input
			type="button" class="link-button" name="inputNum" value="0" onClick="addTF(this.value)"> <input type="button"
			name="inputNum" class="link-button" value="#" onClick="addTF(this.value)">
	</div>
	<div>
		<input type="button" name="inputNum" class="link-button" value="☎" onclick='smtel(document.getElementById("phonenumber").value)'>
	</div>
	</form>
<h5><a href="main.jsp">>> メニュー画面へ</a></h5>
<script>
var number = document.getElementById("phonenumber");
const hassin = number.value;
function addTF(str){
	document.phonenumber.outputNum.value += str; //番号入力後追加
}
function smtel(telno){
	if((navigator.userAgent.indexOf('iPhone') > 0 ) || navigator.userAgent.indexOf('Android') > 0 ){
	document.write('<a id="kakeru" href="tel:'+telno+'">'+telno+'</a>');
	document.getElementById('kakeru').click();
		  window.location.href = 'callText.jsp';



	}else{
	document.write("PC上からは発信できません");
	}
	}
</script>
</body>
</html>