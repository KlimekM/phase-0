// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
mascot = $(".mascot")
h1 = $("h1")

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$("h1:first").css({
	"color": "blue",
	"border": "dotted",
	"visibility": "visible"
});

$("h1:first").html("Squirrels 2016")

//RELEASE 4: Event Listener
  // Add the code for the event listener here

  $("img").on("mouseover", function(e){
    e.preventDefault()
    $(this).attr("src", "http://luisbox.com/wp-content/uploads/2014/10/baby-squirrel.jpg")
  });

  $("img").on("mouseleave", function(o){
    o.preventDefault()
  $(this).attr("src", "devbootcamp-logo-new.png")
  });

//RELEASE 5: Experiment on your own

$("img").css({"borderColor": "red", "borderStyle": "solid"}).animate({
	"borderWidth": "5px",
	"height": "200px",
	"width": "500px"
});



})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*
What is jQuery?

jQuery is a JavaScript library that is full of features and enables us to easily manipulate HTML
documents.

What does jQuery do for you?

jQuery allows us to change and manipulate objects in an HTML document with cool functions such as 
mouseover, mouseleave, click, animate, etc.

What did you learn about the DOM while working on this challenge?

I learned that the DOM is very complex and we have to be specific when changing or manipulating a specific
object so that we do not change the properties of numerous objects.
*/