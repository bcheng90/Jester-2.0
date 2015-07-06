$(document).ready(function(){
  $("#line2").toggle();
  $('#funny2').append("<button>Click for the kicker!</button>");
  $("button").on("click", function(){
    $('#line2').toggle();
    $(this).remove();
  })
});

