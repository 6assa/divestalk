<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DivesTalk ログイン画面</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<div class="container">
		<h1>DivesTalk</h1>
		<img src="images/画像1.png" width="50px" height="50px">
		<h2>ログイン</h2>
		<div class="card">
			<p class="error" id="errorMsg">${errorMsg}</p>
			<form action="LoginServlet" id="loginForm" method="post">
				<input type="email" class="input" name="mailAddress"
					id="mailAddress" placeholder="xxxxxx@xxx.xxx"><br> <input
					type="password" class="input" name="password" id="password"
					placeholder="パスワード"><br> <input type="submit"
					class="input" value="ログイン" onclick="login();"> <label><br>
				<input type="checkbox" id="save"><span>ログイン状態を保持する</span></label>
			</form>
		</div>

		<a href="signup.jsp">>> 新規登録画面へ</a>
	</div>
	<script src="js/jquery-3.2.0.min.js"></script>
	<script src="js/login.js"></script>

</body>
</html>