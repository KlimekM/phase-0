# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

=begin
define a variable min and set it equal list_of_nums[0]
iterate over the array to see each element
return smallest value
=end

def smallest_integer(list_of_nums)
  min = list_of_nums[0] #my variable min is equal to the first position in the array
  list_of_nums.each do |num| #iterate over each num in the array
  if num < min #if a given num is less than the first position in the array
     num = min #set num equal to the first position in the array
  end
 end
 	return min #return the min value or first position in the array.
 end
# I've struggled with this for numerous hours now and made several changes.
# I keep getting 3-4 failures that I can not seem to undo.

def smallest_integer(list_of_nums)
	return list_of_nums.min
end
#refactored version. checks out.
