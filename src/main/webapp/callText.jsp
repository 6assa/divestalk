<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DivesTalk 文字入力画面</title>
<style>
   .container {
     width: 60%;
     margin: 30px auto;
   }
 </style>
 <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
.chat-area {
  height: 80vh;
  background: #8DB4E5;
  overflow: scroll
}
.message-area {
 height: 10vh;
 display: flex;
}

/* テキストエリアは80%で表示 */
.message-area-text {
 width: 80%;
}

/* テキストエリアは20%で表示 */
.message-area-button {
 width: 20%;
}
.message-area-text textarea {
 width: 100%;
 height: 100%;
 resize: none; /* これでユーザーのリサイズをできなくする */
 border: 1px solid #ddd; /* 枠線をつけて領域を分かりやすく */
 box-sizing: border-box; /* borderを付けてるので、border込の大きさにする */
}
.message-area-button button {
 width: 100%;
 height: 100%;
 background: #61E739;
 color: #fff;
 font-size: 2.0rem;
 font-weight: bold;
 border: 0;
}
kkk
</head>
<body>
<div class="container">
   <div class="chat-area"></div>
   <div class="message-area">
     <div class="message-area-text">
       <textarea id="text"></textarea>
     </div>
     <div class="message-area-button">
       <button id="send" class="disabled-button">送信</button>
     </div>
   </div>
 </div>
</body>
</html>