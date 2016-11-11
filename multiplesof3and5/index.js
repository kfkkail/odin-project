var answer = 0;
var listOfNumbers = new Array();
var newNumber = 0;
var limit = 1000;

for (i=1; i < limit; i++) {
  if(i%3 === 0 || i%5 === 0) {
    listOfNumbers.push(i);
  }
}

for (j=0; j < listOfNumbers.length; j++) {
  answer += listOfNumbers[j];
}

if (document.getElementsByClassName('return').length > 0) {
	$('.return').html(answer);
}
