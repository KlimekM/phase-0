# I worked on this challenge by myself.
# This challenge took me [#] hours.


# Pseudocode
# iterate over an array
# if the element is divisible by 3 and 5 then the element should be FizzBuzz
# if the element is divisible by 3 the element should be Fizz
# if the element is divisible by 5 the element should be Buzz
# if none of the conditions apply the element should stay the same.
# print the new array.

# Initial Solution

def super_fizzbuzz(array)
  array.map! do |x|
    if x % 3 == 0 && x % 5 == 0
      x = "FizzBuzz"
    elsif x % 3 == 0
      x = "Fizz"
    elsif x % 5 == 0
      x = "Buzz"
    else
      x = x
    end
  end
  p array
end

# Refactored Solution


def super_fizzbuzz(array)
  array.map! do |x|
    if x % 15 == 0
      x = "FizzBuzz"
    elsif x % 3 == 0
      x = "Fizz"
    elsif x % 5 == 0
      x = "Buzz"
    else
      x = x
    end
  end
  p array
end



# Reflection
=begin
	
What concepts did you review in this challenge?
In this challenge I reviewed how to iterate over an array and change the elements within the array
if a certain condition is met.

What is still confusing to you about Ruby?

This challenge did not cause much confusion and was fairly simple to get through and understand.

What are you going to study to get more prepared for Phase 1?

I am going to continue reviewing the Ruby Docs to learn new built in methods that I may not have come across.

=end