$(document).ready(function(){

  $('.next_advice').on('click', function(){
    window.location.reload();
  });

  $(document).keydown(function(e) {
    if(e.which === 82){
      window.location.reload();
    }
  });

});
