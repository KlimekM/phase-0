/*
Gradebook from Names and Scores
I worked on this challenge with Dan Turcza. 
This challenge took me [1] hour.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var gradebook = {};

for (var x = 0; x < students.length; x++){
  gradebook[students[x]] = {}
  gradebook[students[x]]["testScores"] = scores[x]
};

gradebook.addScore = function(name, score){
  gradebook[name]["testScores"].push(score)
};

gradebook.addScore("Joseph", 90);


gradebook.getAverage = function(name){
  return average(gradebook[name]["testScores"]);
};

function average(arr_ints) {
  return (arr_ints.reduce( function(a,b) { return a+b }))/arr_ints.length
}

console.log(gradebook);
console.log(gradebook.getAverage("Susan"));

// __________________________________________
// Refactored Solution
/*
What did you learn about adding functions to objects?

I learned that functions can be added using the dot notation by writing the new
function name after the variable that it will act on and setting it equal to function with
the arguments and what it will do in curly brackets.

How did you iterate over nested arrays in JavaScript?

We iterated over nested arrays by using a for loop to iterate over the students variable
and setting it equal to each of the corresponding score arrays in the scores variable.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?

The new method that we used was the .reduce method which is a function that takes an array
and returns the sum of the array. We then took that result and divided it by the .length of the array to
complete our new average function.




*/
// __________________________________________
// Reflect









// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)