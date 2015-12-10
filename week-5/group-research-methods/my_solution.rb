# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2 Array Pseudo Code:
# Method to update the existing numbers in an array by the number input.
# input: array and a number
# steps: create a method my_array_modification_method! that takes an array and a number as its parameters.
# iterate over the array to find the integer values
# update the numbers within the array by the number in the method argument.
# output: new array with the updated numbers.

def my_array_modification_method!(array, num)
  array.map! { |x| x.is_a?(Integer)? (x + num) : x } #attempted .each, but the values were not updating, seems to work with map.
end

# Person 2 Hash Pseudo Code:
# Method to update the existing hash values 
# input: hash and a number
# steps: create a method my_hash_modification_method! that takes an array and a number as its parameters.
# iterate over the hash to find the name keys
# update the values within the hash by the number in the method argument.
# output: new hash with the updated numbers.

def my_hash_modification_method!(hash, age_diff)
  hash.each { |name, age| hash[name] = (age + age_diff) }
end

# Identify and describe the Ruby method(s) you implemented.
# To modify the array I came across the map! method. I actually just read the Well Grounded Rubyist chapter on enumerables
# before beginning this challenge and the method was mentioned in there. I first tried to perform the method with each,
# but needed to create a new array and it seems that .map does exactly that. It modifies the original array, but with the values
# in the supplied block. I also had to add a ! at the end of the method to make the method destructive.
#
# To modify the hash, I just stuck with a basic .each command to iterate over the names in the hash.
# I then set each hash name key equal to the age value plus the age difference parameter that we wanted to
# modify the age by.
#


# Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#