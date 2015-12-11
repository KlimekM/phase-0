# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? array
# What is the output? (i.e. What should the code return?) an array of the most frequent values
# What are the steps needed to solve the problem? 
# define a method titled mode which takes an array as its input
# iterate through the array to find the most common value
# return a new array with the most common value

# 1. Initial Solution

def mode(array)
  mode_array = []
  counter = Hash.new(0)
  array.each do |x|
    counter[x] += 1  
  end
  counter.each do |k, v|
    if v == counter.values.max
      mode_array.push(k)
    end
  end
  return mode_array
end

# 3. Refactored Solution

def mode(array)
  mode_array = array.inject(Hash.new(0)) { |k, v| k[v] = array.count(v); k }
  mode_array.select { |k,v| v == mode_array.values.max }.keys
end



# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# 
# We decided to implement a new hash. Mostly because the release hinted at it. We started out with an array, but weren't having
# too much success so we jumped to a hash which worked much better.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# 
# I think I was a bit less successful breaking the problem down into pseudocode than the last time pairing.
# We started pseudo-coding before hitting a wall and jumping into some trial runs testing out potential code options.

# What issues/successes did you run into when translating your pseudocode to code?
# 
# We initially set our counter equal to 0 instead of a hash which wasn't returning what we wanted it to. We should have been more
# detailed in breaking down how we would iterate through our array. I have a hard time pseudocoding without using actual code terms
# and examples so that was another issue that we came across here.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# 
# Initially we used a simple .each function to iterate through the content, but did find two cool new methods when refactoring which were .inject and .select.
# They were not to hard to implement and did what we expected them to. We are still a bit unsure of how inject functions, but came across an example that used it
# and it seemed to do what we wanted from our code so we ran with it.
