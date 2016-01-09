# Numbers to English Words


# I worked on this challenge by myself.
# This challenge took me [#] hours.


# Pseudocode

# Input: an integer
# Output: A string with the integer in words.
# Steps:
# - define a method that takes an integer as an argument.
# 	- define a hash that will have the numbers 1 through 19 as keys 
# 	and their word form as values. It will also contain 20, 30, so on as keys
# 	and their word form as values.
# 	- if the hash contains the input return the number as a word.
#  	- otherwise take the input find the key that corresponds with the first digit
		# -return the first digit word followed by the second digit word


# Initial Solution

# Only for numbers 1-100
def in_words(integer)
  nums_to_words = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "fourty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
    100 => "one hundred"
  }
  
  if nums_to_words.include? (integer)
    p nums_to_words[integer]
  elsif
    int_arr = integer.to_s.chars
    second_word = int_arr.pop.to_i
    first_word = int_arr.push("0").join.to_i
    p nums_to_words[first_word] + " " + nums_to_words[second_word]
  end
end

in_words(24)

# Refactored Solution

# Solution for numbers 1-1000
def in_words(integer)
  nums_to_words = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "fourty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
    100 => "one hundred",
    1000 => "one thousand"
  }
  
  if nums_to_words.include? (integer)
    nums_to_words[integer]
  elsif
    int_arr = integer.to_s.chars
    if int_arr.length == 3 && int_arr[1] == "1" || int_arr[2] == "0"
      second_word = int_arr.pop(2).join.to_i
      first_word = int_arr.pop.to_i
      p nums_to_words[first_word] + " hundred " + nums_to_words[second_word]
    elsif int_arr.length == 3
      third_word = int_arr.pop.to_i
      second_word = int_arr.pop.chars.push("0").join.to_i
      first_word = int_arr.pop.to_i
      p nums_to_words[first_word] + " hundred " + nums_to_words[second_word] + " " + nums_to_words[third_word]
    elsif 
      second_word = int_arr.pop.to_i
      first_word = int_arr.push("0").join.to_i
      p nums_to_words[first_word] + " " + nums_to_words[second_word]
    end
  end
end

# Reflection
=begin
What concepts did you review or learn in this challenge?

The concepts that I reviewed in this challenge were accessing elements from a hash and
manipulating a variable between a string, array, and an integer.

What is still confusing to you about Ruby?

I tried to look up other peoples solutions to this problem after the fact to make mine a bit shorter and I am still confused
by some of the syntax and code that I saw. There were a lot of functions and code that I have not seen
before and was unfamiliar with how it worked.

What are you going to study to get more prepared for Phase 1?

To get more prepared for phase 1 I want to continue studying iterating over elements and
getting comfortable using/writing loops.
=end