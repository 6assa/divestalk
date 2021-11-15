<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DivesTalk 新規登録画面</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<div class="container">
		<h1>DivesTalk</h1>
		<h2>新規登録</h2>
		<div class="card">
			<p class="error" id="errorMsg">${errorMsg}</p>
			<form action="LoginServlet" id="loginForm" method="post">
			   <input type="text" name="name" id="name" placeholder="名前"><br>
				<input type="email" name="mailAddress" id="mailAddress"
					placeholder="xxxxxx@xxx.xxx"><br> 
					<input	type="password" name="password" id="password" placeholder="パスワード(8文字以上)"><br>
					<input	type="password" name="password" id="password" placeholder="パスワード再入力"><br>
				<input type="submit" value="登録する">
			</form>
		</div>

		<a href="login.jsp">>> ログイン画面へ</a>
	</div>
</body>
</html>