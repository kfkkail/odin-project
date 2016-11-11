$(document).ready(function(){
  var dimension = 16;
  var sketchPadSize = 960;
  var squareDimension = sketchPadSize/dimension;

  for(hCount = 0; hCount < dimension; hCount++) {
    for(wCount = 0; wCount < dimension; wCount++) {
      $('.container').append('<div class=\'#'+hCount+' square\'></div>');
    }
  }
  $('.square').css({'height':squareDimension+'px','width':squareDimension+'px','background-color':'yellow'});
});
