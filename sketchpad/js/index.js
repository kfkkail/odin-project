//document is ready
$(document).ready(function(){
  var dimension = 30;
  resetContainer(dimension);
});

//reset the sketchpad
function resetSketchpad() {
  var dimensionPrompt = prompt("How many squares? : ", "30");
  resetContainer(dimensionPrompt);
  $('.square').fadeTo(100,1);
}

//reset the whole container
function resetContainer(dimension) {
  //remove all the squares
  $('.square').remove();
  var sketchPadSize = 500;
  var squareDimension = sketchPadSize/dimension;
  var numberOfSquares = dimension*dimension;
  $('.container').css({'height':sketchPadSize+'px','width':sketchPadSize+'px'})

  //create all the squares for the sketchpad
  for(count = 0; count < numberOfSquares; count++) {
      $('.container').append('<div class=\'square\'></div>');
  }

  //set the css for the squares
  $('.square').css({'height':squareDimension+'px','width':squareDimension+'px','background-color':'grey'});

  //use the hover function to draw!
  $('.square').hover(function(){
    $(this).fadeTo(500,0.5);
  }, function(){
    $(this).fadeTo(500,0.6);
  });
}
