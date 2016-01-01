// JavaScript Olympics

// I paired with: Michal Klimek/Angelika Yoder on this challenge.

// This challenge took me 1.5 hours.


// Warm Up



// Bulk Up

var athletes = [ 
  { name: "Sarah Hughes", event: "Ladies Singles" }, 
  { name: "Joe Athletes", event: "Mens Singles" }
];

var wins = function(athletes) 
{
  for (var key in athletes) 
  {
    athletes[key].wins = athletes[key].name + " won the " +
      athletes[key].event
    console.log(athletes[key].wins)
  }
}
    
console.log(wins(athletes));


// Jumble your words

function jumble(string) {
  var newArr = string.split("");
  newArr = newArr.reverse();
  console.log(newArr.join(""));
};

jumble("JavaScript Rules");

// 2,4,6,8

function numEven(value, index)
{
  if (value % 2 ===0) 
  {
    return true;
  }
}

var numArray = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var bunchEvens = numArray.filter(numEven);
console.log(bunchEvens);



// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name,
  this.age = age,
  this.sport = sport,
  this.quote = quote
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?

In this challenge I solidified the importance of semicolons in JavaScript. There were a couple
instances where we left them out and had difficult running the program. In addition to that it was
good to continue using the syntax and getting more familiar with how to use it.

What are constructor functions?

Constructor functions create a type of an object that has a set number of variables. We can then use
the function to create numerous instances or new objects with those variables.

How are constructors different from Ruby classes (in your research)?
JavaScript constructors are very similar to Ruby classes and both allow you to build your own and have them built in.
Some differences are that Ruby instance variables have an @ in front of them while the local JavaScript variables have a "this"
word in front of them. Ruby classes allow you to access the instance variables across methods, where as I think a local constructor variable
can only be accessed by its child function but not by other functions in the constructor.
*/