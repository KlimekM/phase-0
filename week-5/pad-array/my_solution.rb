# Pad an Array

# I worked on this challenge with David Rothschild.

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, a minimum sized value, and a default value
# What is the output? return the original array
# What are the steps needed to solve the problem? 
# min_size is less than the array size
# if it is not, return the array. 
# otherwise take the difference of min_size minus the array size and add the value that many times to the end of the array. 
# return the original array

# What is the input? array, a minimum sized value, and a default value
# What is the output? new_array
# What are the steps needed to solve the problem?
# new_array equals values of array
# if min_size is less than the array_size
#  return new_array
# else
#   pad_size = min_size - array_size
#   loop pad_size times
#     shovel value into array
#   END LOOP
#   return new_array
# END IF


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.count
    return array
  else
    pad_size = min_size - array.count
    pad_size.times {array << value}
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each {|item| new_array << item}
  if min_size <= new_array.count
    return new_array
  else
    pad_size = min_size - new_array.count
    pad_size.times {new_array << value}
    return new_array
  end
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size >= array.count
   # pad_size = min_size - array.count
    (min_size - array.count).times {array << value}
  end
    array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  # array.each {|item| new_array << item}
  new_array.concat(array)
  if min_size >= array.count
    pad_size = min_size - new_array.count
    pad_size.times {new_array << value}
  end
   new_array
end

# Were you successful in breaking the problem down into small steps?
# Yes, we were very successful in breaking down the problem into small steps.
# Our pseudocode definitely helped in writing our methods and made the steps easy to follow.
# 
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Once the pseudocode was written we had a fairly easy time translating it into code.
# We had some minor difficulties implementing the push method and used the >> instead of <<, we also set min_size > array.count instead of >=. 
# 
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Yes our initial solution successfully passed the rspec tests. 
# I think it was because we used sound step by step logic and made sure to test our methods to make sure they checked out before running them through rspec.
# 
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# For the most part we thought our code was pretty clean. We did get rid of a redundant return, and found the .concat method to push the old array values into our new array.
# 
# How readable is your solution? Did you and your pair choose descriptive variable names?
# Our solution is pretty readable and easy to follow. We chose variables names that easily described the element such as pad_size and new_array.
# 
# What is the difference between destructive and non-destructive methods in your own words?
# The difference between destructive and non-destructive methods is that destructive methods will modify the initial data and replace it thus destroying the initial data.
# Non-destructive methods will instead keep the old values intact and create a new array with the new values from the method that was ran on the initial data.