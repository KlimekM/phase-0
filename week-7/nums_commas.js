// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Devin Mandelbaum

// Pseudocode
// input an integer
// output a comma separated integer as a string
// create a function to insert commas
// convert integer to a string
// toString()
// split string into an array
// reverse the array
// add a comma to the appropriate string element
// re-reverse and rejoin the array into a string
// return the comma-separated string


// Initial Solution
function separateComma(num){
  var numString = num.toString();
  var numArr = numString.split('');
  numArr = numArr.reverse();
  for (var count = 0; count < numArr.length; count ++) {
    if (count%3 == 0 && count != 0) {
      numArr[count] += ',';
    }
  }
  numArr = numArr.reverse().join('');
  console.log(numArr);
}
separateComma(12345678);


// Refactored Solution
function separateComma(num){
  console.log(num.toLocaleString());
}
separateComma(123456784422);



// Your Own Tests (OPTIONAL)


// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

It was a little bit intimidating approaching the problem from the perspective of JavaScript. Aside from the two challenges
before this one I did not use JavaScript for much and felt a little unsure of myself with it. Luckily my pair was fairly well
versed and helpful along the way. We approached the problem in a similar way as we would using Ruby. However, JavaScript does
not have all of the methods that Ruby has and we had to adjust to that in this challenge. 

What did you learn about iterating over arrays in JavaScript?

The syntax for iterating over arrays in JavaScript was reinforced for me during this challenge.
I feel more comfortbale using the for loop/3 element format and feel like I understand it better.

What was different about solving this problem in JavaScript?

When I approached the problem in Ruby I did not reverse the array and just added the commas from the back using the negative index
notation, but was unsure if that would work here. Aside from that, the way we write for loops is slightly different in JavaScript and
took some getting used to.

What built-in methods did you find to incorporate in your refactored solution?

We actually found a method that managed to do our entire initial solution in one line of code which was the .toLocaleString method
which takes a number or input and converts it to the local language string interpretation of the number or default way of writing the number in a given locale.

*/