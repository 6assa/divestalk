<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>DivesTalk</h1>
		<h2>新規登録</h2>
		<div class="card">
			<p class="error" id="errorMsg">${errorMsg}</p>
			<form action="LoginServlet" id="loginForm" method="post">
				<input type="email" name="mailAddress" id="mailAddress"
					placeholder="xxxxxx@xxx.xxx"><br> <input
					type="password" name="password" id="password" placeholder="パスワード"><br>
				<input type="text" name="name" id="name" placeholder="名前"><br>
				<input type="submit" value="登録する">
			</form>
		</div>

		<a href="SignUpServlet">>> ログイン画面へ</a>
	</div>
</body>
</html>