<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DivesTalk 電話画面</title>
</head>
<body>
	<h5>Title</h5>
	<h2>電話</h2>
	<input type="tel" name="outputNum" placeholder="000000000">
	<p>
		<label for="model">モードを選択してください：</label> <select id="model"
			name="model">
			<option value="video">ビデオ</option>
			<option value="textsound">文字音声</option>
		</select>
	<div class="num-body">
		<input type="submit" name="inputNum" value="1"> <input
			type="submit" name="inputNum" value="2"> <input type="submit"
			name="inputNum" value="3">
	</div>
	<div class="num-body">
		<input type="submit" name="inputNum" value="4"> <input
			type="submit" name="inputNum" value="5"> <input type="submit"
			name="inputNum" value="6">
	</div>
	<div class="num-body">
		<input type="submit" name="inputNum" value="7"> <input
			type="submit" name="inputNum" value="8"> <input type="submit"
			name="inputNum" value="9">
	</div>
	<div class="num-body">
		<input type="submit" name="inputNum" value="*"> <input
			type="submit" name="inputNum" value="0"> <input type="submit"
			name="inputNum" value="#">
	</div>
	<div>
		<input type="submit" name="inputNum" value="☎">
	</div>

</body>
</html>