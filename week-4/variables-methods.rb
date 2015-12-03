puts "Hello there, what is your first name?"
firstname = gets.chomp.capitalize
puts "What is your middle name?"
middlename = gets.chomp.capitalize
puts "Finally, what is your last name?"
lastname = gets.chomp.capitalize
puts "Nice to meet you, #{firstname} #{middlename} #{lastname}!"

puts "What is your favorite number?"
favnum = gets.chomp.to_i + 1
puts "Isn\'t #{favnum} a much bigger and better number to have as your favorite?"

#Links to exercies:
# 4.3.1: https://github.com/KlimekM/phase-0/tree/master/week-4/address/5-format-address
# 4.3.2: https://github.com/KlimekM/phase-0/tree/master/week-4/math/6-math-methods
#How do you define a local variable?
# A local variable is a variable that has been assigned a value. It can begin with an underscore or a lower case letter.
#How do you define a method?
# A method is something that is defined and performs a particular task on an object.
#What is the difference between a local variable and a method?
# Local variables take input and can re-call that input. Methods define a way of doing something, take an argument or value, and do the previously assigned thing with the new input values.
#How do you run a ruby program from the command line?
#You run a ruby program from the command line by typing "ruby document-name.rb" 
#How do you run an RSpec file from the command line?
#You run an RSpec file from the comman line by typing "rspec spec-file-name.rb"
#What was confusing about this material? What made sense?
#I spent a lot of time trying to figure out why 4.3.1 kept failing and it was because I used puts instead of return. I am still unsure why that would make a difference, but think it is because puts stops at nil.
#The thing that made sense to me is taking an argument and making it appear in your output using #{}. I am not sure why, but it just clicks for me
#and I have a fairly easy time printing a given local variable or answer.