// Create a new list
// Set a variable grocery list to an empty object.

// Add an item with a quantity to the list
// Input: food item and its quantity
// Steps: 
// - create a function that takes the food item and quantity as arguments.
// - add the food item/quantity to the grocery list object.	
// Output: grocery list with the new item on the list

// Remove an item from the list
// Input: a food item to remove
// Steps:
// - create a function that takes the food item as an argument.
// - remove the given food item from the grocery list.
// Output: grocery list without the food item.

// Update quantities for items in your list
// Input: food item on the list and new quantity
// Steps:
// - create a function that takes a food item/new quantity as its arguments.
// - check if the food item is on the list
// - if it is update the quantity to the new value
// - if it is not, write the food item is not on the list use the add item function to add it.
// Output: grocery list with the updated quantity

// Print the list
// Input: an object
// Steps:
// - take the input object, alphabetize it, return the new list
// Output: an alphabetized grocery list.

var groceryList = {};

function addItem(foodItem, quantity) {
  groceryList[foodItem] = quantity;
};

function removeItem(foodItem) {
  if (groceryList.hasOwnProperty(foodItem)) {
    delete groceryList[foodItem]
  } else {
    console.log(foodItem + " is not on the list.")
  };
};

function updateQuantity(foodItem, newQuantity) {
  if (groceryList.hasOwnProperty(foodItem)) {
    groceryList[foodItem] = newQuantity
  } else {
    console.log(foodItem + " is not on the list. Feel free to add it.")
  };
};

function sortList(groceryList) {
  var sortedList = {},
  foodItem, array = [];
  for (foodItem in groceryList) {
    if (groceryList.hasOwnProperty(foodItem)) {
      array.push(foodItem);
    }
  }
  array.sort();
  for (foodItem = 0; foodItem < array.length; foodItem++) {
    sortedList[array[foodItem]] = groceryList[array[foodItem]];
  }
  console.log(sortedList);
};

addItem("Bananas", 5)
addItem("Tomatoes", 2)
removeItem("Bananas")
addItem("Beer", 2)
addItem("Potatoes", 8)
updateQuantity("Tomatoes", 5)
updateQuantity("Beer", 6)
sortList(groceryList)

// Reflect
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

This method helped me solidify the JavaScript syntax and creating functions. It also solidified iterating over an object/array.

What was the most difficult part of this challenge?

The most difficult part of this challenge was that objects in JavaScript can not be sorted alphabetically so I had to convert each
one into an array and sort the arrays alphabetically.

Did an array or object make more sense to use and why?
An object made more sense, because I had the food item as the key and the quantity as the property. However, when wanting to sort the
list alphabetically I had to converty the key/property pairs to arrays due to the lack of a sort function for objects.
*/