# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

=begin
define a variable max and set it equal to list_of_nums[0]
iterate over the array to see each element
return largest value
=end

def largest_integer(list_of_nums) #define method largest_integer with argument list_of_nums
  max = list_of_nums[0] #set the max as the first position of the array
  list_of_nums.each do |num| #iterate over each number of the array
  	if 
  		max < num # if max is less than a given number
  		num = max # the number is equal to max
  	end # close the if statement
end # close the method definition
  return max #return the max number
end # close the return prompt

# Just as with the smallest_integer challenge I tend to get 3-4 failures.
# I have hit a wall and will refactor based on the much easier ruby-docs method.

def largest_integer(list_of_nums)
  return list_of_nums.max
end
#refactored version checks out.