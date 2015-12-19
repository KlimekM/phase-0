# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16-digit string of numbers

# Output: true or false 

# Steps: 

# initialize class with instance variable of credit card number to validate
# raise ArgumentError if length of input is not 16 
# convert input to array

# define doubling method
# iterate over elements from right to left
# double every other digit starting with second-to-last
# 
# define adding digits method
# if number is greater than 9, split it into two digits and add both to the array
# 
# define sum method
# add all digits together and test to see if the total is evenly divisible by 10
# if true, credit card number is valid
# else, credit card number is invalid



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(card_number)
#     raise ArgumentError.new("This is not a valid card number") if card_number.to_s.length != 16
#     @card_number = card_number.to_s.split("")
#   end
  
#   def double
#     i = 0
#     @card_number.map! {|digit| digit.to_i }
#     while i < @card_number.size
#       @card_number[i] *= 2
#       i += 2
#     end
#     @card_number
#   end
  
#   def digit_add
#     @card_number.each do |num|
#       if num > 9
#         x = num.to_s.split("")
#         x.map! {|el| el.to_i}
#         @card_number.push(x[0])
#         @card_number.push(x[1])
#       end
#     end
#   end
  
#   def remove_double_digit_numbers
#     @card_number.delete_if {|num| num > 9}
#   end
       
#   def sum_digits
#    	if @card_number.reduce(:+) % 10 == 0
#    		true
#    	else
#    		false
#    	end
#   end

#   def check_card
#   	double
#   	digit_add
#   	remove_double_digit_numbers
#   	sum_digits
#   end
# end

# Refactored Solution

class CreditCard
  def initialize(card_number)
    raise ArgumentError.new("This is not a valid card number") if card_number.to_s.length != 16
    @card_number = card_number.to_s.split("").map! {|num| num.to_i }
  end
  
  def double
    i = 0
    while i < @card_number.size
      @card_number[i] *= 2
      i += 2
    end
  end
  
  def digit_add
    @card_number.each do |num|
      if num > 9
      	@card_number.concat(num.to_s.split("").map! {|new_num| new_num.to_i})
      end
    end
  end
  
  def remove_double_digit_numbers
    @card_number.delete_if {|num| num > 9}
  end
       
  def validate
   	if @card_number.reduce(:+) % 10 == 0
   		true
   	else
   		false
   	end
  end

  def check_card
  	double
  	digit_add
  	remove_double_digit_numbers
  	validate
  end
end

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?

The most difficult part of this challenge was tracking the current state of our instance variable.
We initially had the input taking a string of numbers and went through a lot more conversions than we needed to
which made it hard to see where we were currently at.

What new methods did you find to help you when you refactored?

The only method that I added in my refactoring was .concat can be applied to an array and takes another array. It then
adds the values from the other array into the original array.

What concepts or learnings were you able to solidify in this challenge?
This challenge was great at solidifying how to use the map method and my comfort level working inside a class.
Keeping track of the state of a given instance variable was also solidified in this challenge.
=end