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
</head>
<body>
<button id="kakunin">音声文字化確認</button>
<div id="content"></div>
<script>
    const speech = new webkitSpeechRecognition();
    speech.lang = 'ja-JP';

    const btn = document.getElementById('btn');
    const content = document.getElementById('content');

    btn.addEventListener('click' , function() {
    // 音声認識をスタート
    speech.start();
    });

    //---------------追記---------------//
    //音声自動文字起こし機能
    speech.onresult = function(e) {
         speech.stop();
         if(e.results[0].isFinal){
             var autotext =  e.results[0][0].transcript
             console.log(e);
             console.log(autotext);
             chat-area.innerHTML += '<div align="left">'+ autotext +'</div>';
          }
     }

     speech.onend = () => { 
        speech.start() 
     };
    //--------------------------------//
  const text     = document.querySelector('#text')
  const speakBtn = document.querySelector('#send')

  speakBtn.addEventListener('click', function() {
    // 発言を作成
    const uttr = new SpeechSynthesisUtterance(text.value)
    // 発言を再生 (発言キューに発言を追加)
    speechSynthesis.speak(uttr)
    chat-area.innerHTML += '<div align="right">'+ uttr +'</div>';
  })
</script>
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