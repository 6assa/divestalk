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
		<h2>ログイン</h2>
		<div class="card">
			<p class="error" id="errorMsg">${errorMsg}</p>
			<form action="LoginServlet" id="loginForm" method="post">
				<input type="email" name="mailAddress" id="mailAddress"
					placeholder="xxxxxx@xxx.xxx"><br> <input
					type="password" name="password" id="password" placeholder="パスワード"><br>
				<input type="submit" value="ログイン" onclick="login();"> <label><input
					type="checkbox" id="save"><span>ログイン状態を保持する</span></label>
			</form>
		</div>

		<a href="SignUpServlet">>> 新規登録画面へ</a>
	</div>
	<!-- container -->
	<script src="js/jquery-3.2.0.min.js"></script>
	<script src="js/login.js"></script>

</body>
</html>