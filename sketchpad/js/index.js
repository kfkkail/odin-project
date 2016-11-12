//document is ready
$(document).ready(function(){
  var dimension = 30;
  resetContainer(dimension);
});

//reset the sketchpad
function resetSketchpad() {
  var dimensionPrompt = prompt("How many squares? : ", "30");
  //scrub the input, don't want to crash the page
  if(dimensionPrompt > 80) {
    dimensionPrompt = 80;
  }
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

    var backgroundRGB = $(this).css("background-color");
    console.log(backgroundRGB);

    //Only choose a random color is the background was grey
    if(backgroundRGB === 'rgb(128, 128, 128)'){
      var rando = Math.random()*0xFFFFFF<<0;
      var color = (rando.toString(16));
      //leading 0's were removed, add them back in!
      if(color.length < 6) {
        var diff = 6-color.length;
        for(i=0; i < diff; i++) {
          color = "0"+color;
        }
      }
      color = '#'+color;
      console.log(rando);
      console.log(color);
      $(this).css({'background-color':color,'opacity':'0.2'});
    } else {
      //otherwise grab the current color and darken it
      var rgb = backgroundRGB.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
      var newR = Math.floor(rgb[1]*0.25);
      var newG = Math.floor(rgb[2]*0.5);
      var newB = Math.floor(rgb[3]*0.75);
      var darkenColor = 'rgb('+newR+','+newG+','+newB+')'
      $(this).css({'background-color':darkenColor,'opacity':'0.2'});
    }
  }, function(){
    $(this).fadeTo(500,1);
  });
}
