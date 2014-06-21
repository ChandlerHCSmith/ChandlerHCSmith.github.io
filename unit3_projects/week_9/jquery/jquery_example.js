$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 

//Completed
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:

var bodyElement = $('body')
bodyElement.css({'background-color': 'skyblue'})

$('.mascot_img').css({'background-color': 'pink'})
var mascot_img = $('.mascot_img')
mascot_img.css({'background-color': 'lightblue'})
mascot_img.css({'width': '240px'})
 
//RELEASE 2: 
 
$('h1').css({'text-indent': '50px'})
var h1 = $('h1')
h1.css({'color': 'blue'})
h1.css({'border': '3px solid darkblue'})
h1.css({'border-radius': '25px'})
h1.css({'visibility': 'inherit'})

$('h2').html('Purple Martins, San Franciscos Mascot')
var h2 = $('h2')
h2.css({'width': '500px'})
h2.css({'color': 'blue'})
h2.css({'border': '2px solid darkblue'})
h2.css({'border-radius': '25px'})
h2.css({'visibility': 'inherit'})

//RELEASE 3: Event Listener
  // Add the code for the event listener here 


 	$('img').mouseover(function(e){
  		e.preventDefault()
  	$(this).attr('src','http://farm5.staticflickr.com/4067/4438875274_b8596cd42c_z.jpg');

  });


//  Was not able to get the image to go back.  I looked at several sources.


//RELEASE 4 : Experiment on your own

/* 
 var imgs = $("img[@src='dbc_logo.jpg']:not(:hidden)");
imgs.css({'margin': '50px'})
 
  	$('img').mouseover(function(e){
  		e.preventDefault()
  	$(this).attr('src','http://artofwilderness.com/wp-content/uploads/2011/01/Purple-Martin-Painting1.jpg');

  });
 
bodyElement.css({'opacity': '50%'})

h1.css({'font-family': 'cursive'})
h1.css({'text-align': 'center'})
h2.css({'text-align': 'center'})

*/

//  Look on jquery_example.html lines 32 through 47.
//  I tried to get the image to move across the screen.  Unsuccessful.


})  // end of the document.ready function: do not remove or write DOM manipulation below this.










