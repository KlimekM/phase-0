// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Stop the baby from crying
// Goals: Stop the baby from crying
// Characters: Dad, Baby
// Objects: Dad, Baby
// Functions: moveUp, moveDown, moveLeft, moveRight, cry, soothe

// Pseudocode
// Declare an object named dad with a random start position position.
//  - def methods to have the player move up,right,down,left.
// Declare an object named baby with a random position.
// - def method to have the baby cry if it is far away from the dad, and stop otherwise.
//
// 

// Initial Code

var dad = {
posX: Math.floor((Math.random() * 100) + 1),
posY: Math.floor((Math.random() * 100) + 1),
move: function(way){
	if(way === "up"){
		dad.posY += 10;
	}
	else if(way === "right"){
		dad.posX += 10;
	}
	else if(way === "down"){
		dad.posY -= 10;
	}
	else if(way === "left"){
		dad.posX -=10;
	}
}
}

var baby = {
posX: Math.floor((Math.random() * 100) + 1),
posY: Math.floor((Math.random() * 100) + 1),
cry: "Wahhh",
soothe: function(posX, posY) {
	if(baby.posX - dad.posX >= 10 || baby.posY - dad.posY >= 10){
		console.log(baby.cry)
	}
	else if(baby.posX - dad.posX < 10 && baby.posY - dad.posY < 10){
		console.log("Dad is nearby!")
	}
	}
}

console.log("The dad's start point is " + dad.posX + ", " + dad.posY + ".");
console.log("The baby's position is " + baby.posX + ", " + baby.posY + ".");
baby.soothe(baby.posX, baby.posY);
dad.move("up");
dad.move("right");
console.log("The dad's current position is " + dad.posX + ", " + dad.posY + ".");
baby.soothe(baby.posX, baby.posY);
dad.move("down");
dad.move("right");
console.log("The dad's current position is " + dad.posX + ", " + dad.posY + ".");
baby.soothe(baby.posX, baby.posY);

// Refactored Code


// Reflection
/*
What was the most difficult part of this challenge?

The most difficult part of this challenge was determining what I wanted to do and getting the code to work in the correct manner.
Initially my game had 3 objects and the goal was to find the baby and put it in a crib, but I was having some difficulties early on
so I simplified it and went with the minimalist approach.

What did you learn about creating objects and functions that interact with one another?

I learned that I can call on different elements of an object within another object. For instance
in the soothe function which was a function for the baby I used the dad.posX in the formula. I also
learned that you can only use the function that are created within a given object on that object only.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

My code was pretty simple so I did not refactor it or find any built-in methods.

How can you access and manipulate properties of objects?

You can access and manipulate properties of objects by taking the object and using .property after it to alter it.
If I wanted to set the dad's posX to 0 I would write dad.posX = 0; or if I wanted to add a new property to the baby such as eye color
I would write baby.eyecolor = "brown".
*/