# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].

# Your Solution Below

=begin
define a variable array_3
iterate over the arrays and push the elements to the new array
print new array
=end

def array_concat(array_1, array_2)
  array_3 = []
  array_1.each { |x| array_3.push(x)}
  array_2.each { |x| array_3.push(x)}
  p array_3
end

#Refactored:

def array_concat(array_1, array_2)
  array_1.concat(array_2)
  p array_1
end
