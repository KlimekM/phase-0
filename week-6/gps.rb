## Your Names
# 1) Roche
# 2) Michal

# We spent [1] hours on this challenge.
=begin
input: remaining_ingredients
output: suggested baking item
steps:
take the remaining_ingredients
iterate through the library to see what can be made
return a suggested baking item
=end

# Bakery Serving Size portion calculator.


def serving_size_calc(item_to_make, num_of_ingredients) # define a method titled serving_size_calc which takes two arguments of item_to_make and num_of_ingredients
  cookbook = {"cookie" => 1, "cake" =>  5, "pie" => 7} # create a new hash titled library which has 3 key/value pairs of bakery goods and their quantities.
  suggestion=""
  suggested_num=0
# data validation
  unless cookbook.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = cookbook[item_to_make] # initialize a variable that is the value of the key/item.
  remaining_ingredients = num_of_ingredients % serving_size #modulo method to give us the left over amount when we divide num_of_ingredients by serving_size
  


  if remaining_ingredients == 0
    puts "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    cookbook.each do |k,v|
      if remaining_ingredients >= v
        suggestion = k
        suggested_num=remaining_ingredients/cookbook[suggestion]
      end
  end
    puts "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients}-- Think about making #{suggested_num} #{suggestion}"
  end
  
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

I learned a lot about making code readable in this challenge. I learned that it is important to use variable names that are
straight forward and to simplify methods to be written over as few lines as possible without making them confusing.

Did you learn any new methods? What did you learn about them?

I learned about the method has_key? which checks a hash for a given key and returns true if the key is included and false if 
it is not. 

What did you learn about accessing data in hashes? 

I learned that accessing data in hashes is fairly simple and we can access a key and its corresponding value by calling the hash name and the key in square brackets
after it.

What concepts were solidified when working through this challenge?
Calling local variables was solidified in this challenge when we tried to create a variable that was only defined in the method and made our
code fail. In addition to that iterating over a hash was another concept that was solidified working through this challenge.
=end