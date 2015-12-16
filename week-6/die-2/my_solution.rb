# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: a random string from the array.
# Steps:
# create a Die class which will be initialized with some number of sides
# define the initialize method which will have an instance variable equal to the array of strings.
# define a sides method which will return a number of arbitrary values in the input array.
# define a roll method which will return a random string within the array
# 	- if the array passed to Die.new is empty we should raise an argument error.

# Initial Solution

# class Die
#   def initialize(labels)
#   	if labels == []
#   		raise ArgumentError.new("Your die must contain at least one element or side")
#   	end
#   	@labels = labels
#   end

#   def sides
#   	@labels.count
#   end

#   def roll
#   	@labels.sample
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new("Your die must contain at least one element or side") if labels == []
  	@labels = labels
  end

  def sides
  	@labels.count
  end

  def roll
  	@labels.sample
  end
end

# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

The main difference between this die class and the last one that we created was that this one took an array as it's input while the original
took an integer. We did not need to change much other than the variable names and adding some methods in order to get the count of the array
and generate a random output in the roll method using the .sample built-in array method.

What does this exercise teach you about making code that is easily changeable or modifiable? 

This exercise taught me that it is pretty to use the same concepts when dealing with integers, arrays, and other Ruby elements but we have to
be aware of what we are dealing with and what method can be used on that element. We also have to be mindful to not include additional ends or
unnecessary characters when making code that is easily changeable.

What new methods did you learn when working on this challenge, if any?

Working on this method I learned about the .sample method which returns a random element within an array.

What concepts about classes were you able to solidify in this challenge?

This challenge allowed me to solidify the concept of instance variables, how to call them, and how they function.

=end