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
<script>
window.__SKYWAY_KEY__ = 'cd92c324-9dca-499e-b520-f8af9c61d497';
const localStream = await navigator.mediaDevices
.getUserMedia({
  audio: true,
-   video: true,
+   video: { facingMode: 'user' }, // 液晶側のカメラ
})
const toggleCamera = document.getElementById('js-toggle-camera');
const toggleMicrophone = document.getElementById('js-toggle-microphone');
const cameraStatus = document.getElementById('camera-status');
const microphoneStatus = document.getElementById('microphone-status');

toggleCamera.addEventListener('click', () => {
  const videoTracks = localStream.getVideoTracks()[0];
  videoTracks.enabled = !videoTracks.enabled;
  cameraStatus.textContent = `カメラ${videoTracks.enabled ? 'ON' : 'OFF'}`;
});
kkk
toggleMicrophone.addEventListener('click', () => {
  const audioTracks = localStream.getAudioTracks()[0];
  audioTracks.enabled = !audioTracks.enabled;
  microphoneStatus.textContent = `マイク${audioTracks.enabled ? 'ON' : 'OFF'}`;
});
const localVideo = document.getElementById('js-local-stream');

localVideo.srcObject = localStream;
localVideo.muted = true; // 自分の音声を自分のスピーカーから聞こえなくする。相手には届く。
localVideo.playsInline = true;
localVideo.autoplay = true;
</script>
</body>
</html>