<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DivesTalk  電話画面</title>
</head>
<script type="text/javascript"><!--
const number = document.getElementById("phonenumber");
const hassin = n=number.value;
function addTF(str)
{
	document.phonenumber.outputNum.value += str;
}
function gopage(){
	let link=document.getElementById('denwabangou');
	let bangou='tel:''+hassin;
	link.setAttribute('href',bangou);
	  for(var i=0; i<document.getElementById('model').length; i++){
	    if(document.getElementById('model').options[i].selected == true){
	      url = document.getElementById('model').options[i].value;
	      location.href = url;
	    }
	  }
	}
// --></script>
<body>
	<h2>電話</h2>
	<form name="phonenumber">
	<input id="phonenumber" type="tel" name="outputNum" placeholder="20" disabled>
	<p>
		<label for="model">モードを選択してください：</label> 
		<select id="model" name="model">
			<option selected value="callText.jsp" >文字音声</option>
			<option value="callVideo.jsp" >ビデオ</option>
		</select>
	<div class="num-body">
		<input type="button" name="inputNum" value="1" onClick="addTF(this.value)"> <input
			type="button" name="inputNum" value="2" onClick="addTF(this.value)"> <input type="button"
			name="inputNum" value="3" onClick="addTF(this.value)">
	</div>
	<div class="num-body">
		<input type="button" name="inputNum" value="4" onClick="addTF(this.value)"> <input
			type="button" name="inputNum" value="5" onClick="addTF(this.value)"> <input type="button"
			name="inputNum" value="6" onClick="addTF(this.value)">
	</div>
	<div class="num-body">
		<input type="button" name="inputNum" value="7" onClick="addTF(this.value)"> <input
			type="button" name="inputNum" value="8" onClick="addTF(this.value)"> <input type="button"
			name="inputNum" value="9" onClick="addTF(this.value)">
	</div>
	<div class="num-body">
		<input type="button" name="inputNum" value="*" onClick="addTF(this.value)"> <input
			type="button" name="inputNum" value="0" onClick="addTF(this.value)"> <input type="button"
			name="inputNum" value="#" onClick="addTF(this.value)">
	</div>
	<div>
	<a id="denwabangou" href="TEL:">
		<input type="button" name="inputNum" value="☎" onclick="gopage()">
	</a>
	</div>
	</form>
<h5><a href="main.jsp">>> メニュー画面へ</a></h5>
</body>
</html>