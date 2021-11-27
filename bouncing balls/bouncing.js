var playBtn = document.getElementById('play'),circle=document.getElementById('circle'),
  ball_sound = document.getElementById('stopwatchSound');
playBtn.addEventListener('click', function() {
    if (!circle.classList.contains('active')) {
      circle.classList.add('active');
      ball_sound.play();
    }
  }, false);