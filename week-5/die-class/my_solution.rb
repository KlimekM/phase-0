# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Die.new(number)
# Output: A random number between 1-6
# Steps:
# create a Die class which will be initialized with some number of sides
# define the initialize method which will have an instance variable equal to the sides input
# define a sides method which will return the number of sides on the die
# define a roll method which will return a random number between 1 and the number of sides
# 	- if the number passed to Die.new is less than 1 we should raise an argument error.
		# - look up how to raise an argument error


# 1. Initial Solution

class Die
  def initialize(sides)
  	if sides < 1
  		raise	ArgumentError.new ("Your die must have a number of sides greater than 1")
  	end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
  	raise ArgumentError.new ("Your die must have a number of sides greater than 1") if sides < 1
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end

# 4. Reflection

=begin
What is an ArgumentError and why would you use one?

An ArgumentError is an error that is prompted when an inappropriate number of arguments is put in or if the input does not match a predetermined parameter for the input.
We would use one if the input does not fit into the input parameters for our class.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I implemented a Class which was new. It was fairly straightforward after watching the videos and reading about Classes.
In addition to the class, I used the rand method for the first time which takes a random number between 1 and the input but excludes the input.
This was definitely a challenge, but I quickly found out what the issue was and solved it by adding 1.

What is a Ruby class?

A Ruby class is a blue print from which we are able to create objects. The objects created within the class take on the built in methods and characteristics of the class.

Why would you use a Ruby class?

We would use a Ruby class to make objects that can call the methods that are already built in to the class. We are able to call methods on Strings, Integers,
Arrays, etc. because those are all already classes.

What is the difference between a local variable and an instance variable?

A local variable is accessible only within the method and stays within it while an instance variable is stuck inside the instance of a given class.

Where can an instance variable be used?

An instance variable can be used across methods but only within a given class.
=end
