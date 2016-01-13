// DOM Manipulation Challenge


// I worked on this challenge with Jeff Schneider.


// Add your JavaScript calls to this page:

// Release 1:

document.getElementById("release-0").className += "done";

// Release 2:

document.getElementById("release-1").style.display = "none";

// Release 3:

document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2";

// Release 4:

document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5:

var elements = document.getElementsByClassName('release-4');

for (var i = 0; i < elements.length; i++) {
  var element = elements[i];
  element.style.fontSize = "2em";
}

// Release 6:

var tmp = document.getElementById("hidden");
document.body.appendChild(tmp.content.cloneNode(true));

/*
What did you learn about the DOM?

I learned that the DOM is based on objects and there are numerous ways to access
and manipulate the objects using JavaScript. I also learned that we can manipulate objects
on an HTML page using a relative JavaScript document.

What are some useful methods to use to manipulate the DOM?

Some useful methods to manipulate the DOM are the .getElementById method which helps you access an element
by its id. You can also access elements by their tag name, class, etc. The .style method allows you to change
the properties of a given element such as .backgroundColor, .fontSize, etc. 