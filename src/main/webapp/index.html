<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.webrtc.ecl.ntt.com/skyway-4.4.3.js"></script>
<title>DivesTalk ビデオ画面</title>
</head>
<body>
<video id="my-video" width="400px" autoplay muted playsinline></video>
<p id="my-id"></p>
  <input id="their-id"></input>
  <button id="make-call">発信</button>
  <video id="their-video" width="400px" autoplay muted playsinline></video>
<script>
  let localStream;

  // カメラ映像取得
  navigator.mediaDevices.getUserMedia({video: true, audio: true})
    .then( stream => {
    // 成功時にvideo要素にカメラ映像をセットし、再生
    const videoElm = document.getElementById('my-video');
    videoElm.srcObject = stream;
    videoElm.play();
    // 着信時に相手にカメラ映像を返せるように、グローバル変数に保存しておく
    localStream = stream;
  }).catch( error => {
    // 失敗時にはエラーログを出力
    console.error('mediaDevice.getUserMedia() error:', error);
    return;
  });
  //Peer作成
  const peer = new Peer({
    key: '791965d2-d252-4755-ae36-d34e02cf3518',
    debug: 3
  });
  peer.on('open', () => {
	    document.getElementById('my-id').textContent = peer.id;
	});
//発信処理
  document.getElementById('make-call').onclick = () => {
    const theirID = document.getElementById('their-id').value;
    const mediaConnection = peer.call(theirID, localStream);
    setEventListener(mediaConnection);
  };

  // イベントリスナを設置する関数
  const setEventListener = mediaConnection => {
    mediaConnection.on('stream', stream => {
      // video要素にカメラ映像をセットして再生
      const videoElm = document.getElementById('their-video')
      videoElm.srcObject = stream;
      videoElm.play();
    });
  }
//着信処理
  peer.on('call', mediaConnection => {
    mediaConnection.answer(localStream);
    setEventListener(mediaConnection);
  });
  peer.on('error', err => {
	    alert(err.message);
	});
  peer.on('close', () => {
	  alert('通信が切断しました。');
	});
</script>
</body>
</html>