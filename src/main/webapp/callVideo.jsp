<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DivesTalk ビデオ画面</title>
</head>
<body>
<div class="toggle-mute">
  <button id="js-toggle-camera">Toggle Camera</button>
  <span id="camera-status"></span>
  <br>

  <button id="js-toggle-microphone">Toggle Microphone</button>
  <span id="microphone-status"></span>
  <br>
  <video id="js-local-stream"></video>
</div>
</body>
</html>