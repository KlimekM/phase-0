# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

=begin
define method longest_string that takes an array of strings as its input
iterate over the array to see each element
return the longest string in the input.
=end


#Your Solution Below

def longest_string(list_of_words)
  longest = list_of_words[0]
  list_of_words.each do |word|
    if 
      word.length > longest.length
      longest = word
    end
  end
  return longest
end

#Refactored Solution:
def longest_string(list_of_words)
  list_of_words.max_by(&:length)
end