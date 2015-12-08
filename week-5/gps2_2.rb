# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# create array of food items
# create hash for the grocery list
# split the array of food items into single strings
# feed the split array into the grocery list hash.
# add quantity values to the items
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: create add_item method that takes parameters of food item and quantity
# if item is on the list, increment
# if item is not, create the item
# output: new item on the list

# Method to remove an item from the list
# input: item name
# steps: create method remove_item and pass it a parameter of food item
# if item is not on the list return nil
# if item is on the list remove
# output: remove the item from the list

# Method to update the quantity of an item
# input: item name and quantity
# steps: create method update_item and pass it parameters of food item and quantity
# if item is not on the list return nil
# if item is on the list, update the quantity
# output: updated quantity of the item.

# Method to print a list and make it look pretty
# input: hash
# steps: create method print_list and pass it a parameter of the grocery hash
# iterate through the hash to order the list alphabetically.
# output: alphabetically arranged list of food items.

def create_list(string)
	grocery_list = {}
	string.split.each {|x| grocery_list[x] = 1}
	p grocery_list
end

grocery_hash = create_list("carrots apples pizza cereal")

def add_item(item_name, quantity, grocery_list)
	if grocery_list.include? item_name
		grocery_list[item_name] += quantity
	else 
		grocery_list[item_name] = quantity
	end 
	p grocery_list
end

add_item("cheese", 5, grocery_hash)
		
def remove_item(item_name, grocery_list)
	grocery_list.delete(item_name)
	p grocery_list
end

remove_item("cheese", grocery_hash)

def update_item(item_name, quantity, grocery_list)
	if grocery_list.include? item_name
		grocery_list[item_name] = quantity
	else
		item_name.capitalize!
		p "#{item_name} is not on the list!"
	end
	p grocery_list
end

update_item("carrots", 4, grocery_hash)

def pretty_list(grocery_hash)
	grocery_hash.sort.each {|item, quantity| puts "We want #{quantity} #{item}!"}
end

pretty_list(grocery_hash)

add_item("lemonade", 2, grocery_hash)
add_item("tomatoes", 3, grocery_hash)
add_item("onions", 1, grocery_hash)
add_item("ice cream", 4, grocery_hash)

remove_item("lemonade", grocery_hash)

update_item("ice cream", 1, grocery_hash)

pretty_list(grocery_hash)

#Reflection
#What did you learn about pseudocode from working on this challenge?
# I learned that pseudocode is very helpful when you lay out your input, the steps to get the end result and the output.
#What are the tradeoffs of using Arrays and Hashes for this challenge?
# I think the advantage of using a hash is that you can reference the quantity by the grocery item that it is linked to.
# Arrays would make that a little harder since the values are set to a position and would remain in that order.
#What does a method return?
# A method returns the end result of your variable after it is passed through a set of commands that were assigned within the method.
#What kind of things can you pass into methods as arguments?
# We can pass any object in ruby as an argument to a method which includes strings, floats, integers, hashes, and arrays.
#How can you pass information between methods?
# You can pass information between methods by setting a global variable that you can then use as an argument in a given method.
#What concepts were solidified in this challenge, and what concepts are still confusing?
# I am definitely a lot more clear on local variables and how they only function within a particular method.
# Looping and iterating are still problem spots for me, but I am becoming more comfortable with them as I use them.