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
list_of_nums = []
min = list_of_nums[0]
def smallest_integer(list_of_nums)
  min = list_of_nums[0]
  if [0] < [1] && [0] < [2]
    return [0]
  elsif [1] < [0] && [1] < [2]
    return [1]
  elsif [2] < [0] && [2] < [1]
    return [2]
  end
end

puts min