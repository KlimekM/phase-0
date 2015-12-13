# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? an integer
# What is the output? a comma separated integer as a string
# What are the steps needed to solve the problem?
# def a method titled separate_comma that takes an integer as its input
# split the integer into an array of single string characters
# if the string/array has 3 or less characters print the number string
# if the string/array has 4 to 6 characters put a comma in front of the last 3 characters
# if the string/array has 7 or more characters put a comma in front of the last 3 characters and the 6th character from the end
# return a string of the number with appropriate commas between the Numbers

# 1. Initial Solution

# def separate_comma(num)
#   new_arr = num.to_s.chars
#   if new_arr.count <= 3
#     new_arr.join
#   elsif new_arr.count >= 4 && new_arr.count < 7
#     new_arr.insert(-4, ",")
#     new_arr.join
#   elsif new_arr.count >= 7
#     new_arr.insert(-4, ",") && new_arr.insert(-8, ",")
#     new_arr.join
#   end
# end

# Keep getting rspec failures in the above initial solution stating that join
# is an undefined method eventhough I get the desired output when I run the program.
# Chose to get rid of an array and implemented just a string below.

# 2. Refactored Solution

def separate_comma(num)
  num_string = num.to_s
  if num_string.length < 4
    num_string
  elsif num_string.length >= 4 && num_string.length < 7
    num_string.insert(-4, ",")
  elsif num_string.length >= 7
    num_string.insert(-4, ",")
    num_string.insert(-8, ",")
  end
end

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

# My process for breaking the problem down was to think where we would add a comma if we were to write a number down and how that would change
# with a different number of digits. I initially thought that I would convert the number to a string push it to an array and insert the commas
# every third number from the back. I did consider an approach of inserting commas from the front, but did not see how it would work if the input
# was continually changing.

# Was your pseudocode effective in helping you build a successful initial solution?

# My pseudocode was very helpful in helping me build a successful initial solution. I referenced it when I began and to see what I needed to do next.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

#  I used a lot of new Ruby methods in my initial solution and when regactoring. My refactored solution is just a cleaner version of my initial which doesn't use many new methods. I just switched count to length since I went from
# an array to a string. Overall, my experience using Ruby docs was positive. I always look through to column to check out names that may do the task that I am trying to perform.
# I did have a problem splitting the initial array into individual characters, but came across chars which was a useful tool. Even though I did not use any of the initial methods in my
# refactored solution, it was good to play around with them and see how they function.

# How did you initially iterate through the data structure?

# I initially iterated through the data structure by converting the integer to a string to an array and using the count method to check for a number of elements in the array.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# Yes, my refactored solution has less built in methods and does the exact same thing as my initial solution which makes it more readable and efficient.
