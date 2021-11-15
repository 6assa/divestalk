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