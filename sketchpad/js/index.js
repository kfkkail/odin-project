$(document).ready(function(){
  var dimension = 30;
  var sketchPadSize = 500;
  var squareDimension = sketchPadSize/dimension;
  $('.container').css({'height':sketchPadSize+'px','width':sketchPadSize+'px'})

  for(hCount = 0; hCount < dimension; hCount++) {
    for(wCount = 0; wCount < dimension; wCount++) {
      $('.container').append('<div class=\'#'+hCount+' square\'></div>');
    }
  }
  $('.square').css({'height':squareDimension+'px','width':squareDimension+'px','background-color':'grey'});
  $('.square').hover(function(){
    $(this).fadeTo(500,0.5);
  }, function(){
    $(this).fadeTo(500,1);
  });
});

function resetSketchpad() {
  $('.square').fadeTo(100,1);
}
