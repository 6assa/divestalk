<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DivesTalk 文字入力画面</title>
<link rel="stylesheet" href="css/callText.css">
</head>
<body>
<button id="kakunin">音声文字化確認</button>
<div id="content"></div>
<div class="container">
   <div id="chat-area" class="chat-area"></div>
   <div class="message-area">
     <div class="message-area-text">
       <input type="text" id="text" cols="40" wrap="hard">
     </div>
     <div class="message-area-button">
       <input type="submit" class="disabled-button" onclick="onbuttonclick()" value="送信">
     </div>
   </div>
 </div>
<script>
    const speech = new webkitSpeechRecognition();
    speech.lang = 'ja-JP';

    const btn = document.getElementById('kakunin');
    const content = document.getElementById('content');
    const sousin=document.getElementById('chat-area');
    btn.addEventListener('click' , function() {
    // 音声認識をスタート
    speech.start();
    });

    //---------------追記---------------//
    //音声自動文字起こし機能
    speech.onresult = function(e) {
         speech.stop();
         if(e.results[0].isFinal){
             var autotext =  e.results[0][0].transcript;
             console.log(e);
             console.log(autotext);
             sousin.innerHTML +=  '<div align="left"><p class="says">'+ autotext +'</p></div>';
             const uttr = new SpeechSynthesisUtterance(autotext);
             // 発言を再生 (発言キューに発言を追加)
             speechSynthesis.speak(uttr);
         }
     }

     speech.onend = () => { 
        speech.start();
     };
    //--------------------------------//
  
  //const speakBtn = document.getElementById('send');
  function onbuttonclick() {
    // 発言を作

	   var text     = document.getElementById('text');
    sousin.innerHTML +=  '<div class="says" align="right">'+ text.value +'</div>';
    const uttr = new SpeechSynthesisUtterance(text.value);
    // 発言を再生 (発言キューに発言を追加)
    speechSynthesis.speak(uttr);
  };
</script>
</body>
</html>