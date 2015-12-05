# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
  #  puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter expected the keyword end to the code.
# 5. Where is the error in the code?
# At the end of the code or document.
# 6. Why did the interpreter give you this error?
# The method only has one end which ends the while statement, but does not end the method.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# Line 35
# 2. What is the type of error message?
# undefined local variable or method 'south_park'
# 3. What additional information does the interpreter provide about this type of error?
# The object for which the error is occuring is located in <main>
# 4. Where is the error in the code?
# It is a name error. The method or local variable is not defined.
# 5. Why did the interpreter give you this error?
# south_park reads like a local variable but has no definition.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# Line 50
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# The error is for an object located in <main>.
# 4. Where is the error in the code?
# It is a NoMethodError
# 5. Why did the interpreter give you this error?
# cartman() reads like a method, but it has not been defined prior to running.

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Line 65
# 2. What is the type of error message?
# wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# It is an argument error.
# 4. Where is the error in the code?
# The error stems from errors.rb line 69.
# 5. Why did the interpreter give you this error?
# cartmans_phrase on line 69 takes an argument of 'I hate Kyle' when it should not take any arguments.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# Line 84
# 2. What is the type of error message?
# wrong number of arguments (0 for 1)
# 3. What additional information does the interpreter provide about this type of error?
# It is an ArgumentError
# 4. Where is the error in the code?
# Line 88 of errors.rb
# 5. Why did the interpreter give you this error?
# The method on line 88 does not take an argument, but it is defined as taking offensive_message on line 84.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Line 105
# 2. What is the type of error message?
# wrong number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
# It is an ArgumentError
# 4. Where is the error in the code?
# On line 109
# 5. Why did the interpreter give you this error?
# The method on line 109 only takes 1 argument when it should take 2.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 124
# 2. What is the type of error message?
# String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# It is a TypeError
# 4. Where is the error in the code?
# Line 124
# 5. Why did the interpreter give you this error?
# An integer can not be multiplied by a string.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 139
# 2. What is the type of error message?
# divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# It is a ZeroDivisionError
# 4. Where is the error in the code?
# Line 139
# 5. Why did the interpreter give you this error?
# We can not divide by zero.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 155
# 2. What is the type of error message?
# require_relative cannot load such file.
# 3. What additional information does the interpreter provide about this type of error?
# It is a load error.
# 4. Where is the error in the code?
# On line 155.
# 5. Why did the interpreter give you this error?
# A method is truing to load a markdown document which it can not do.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
# The most difficult error to read was the first one, because of the line that was showing the error.
#How did you figure out what the issue with the error was?
# I looked at the code and realized that there was a single end and that there was no end to the defined method.
#Were you able to determine why each error message happened based on the code? 
# Yes, once I understood the structure of error messages it became much clearer on what to look for and how to correct each one.
#When you encounter errors in your future code, what process will you follow to help you debug?
# I will first take note of the line number where the error is occuring, then read the type of error that was encountered, and what part of the code contained the error. Then I will attempt to fix the code to stop the error.