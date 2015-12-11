# What is the input? an array of all the students
# What is the output? an array of the students divided into groups of 4 or 5
# What are the steps needed to solve the problem?
# define a method titled groups which takes an array as it's argument.
# iterate over the array and divide it into groups of 4/5 people
#   - since there are 66 students in our cohort, I want 4 groups of 4 and 10 groups of 5
#   - look up .slice function
# return new arrays of 4/5 people per array


students = [
"Alex Forger",
"Alexander Nelson",
"Karen Ball",
"Christopher Bovio",
"Gino Paul M. Capio",
"Jonathan Chin",
"Claire Samuels",
"Ray Curran",
"David Louie",
"Dave Spivey",
"Max Davis",
"Devin Mandelbaum",
"Afton Downey",
"Jordan Fox",
"Rebecca Gahart",
"Gary Wong",
"Hodges Glenn",
"Everett Golden",
"Christopher Graf",
"Alana Hanson",
"LeeAnne Hawley",
"Sabri Helal",
"Thomas Huang",
"Jeff Schneider",
"Jillian Dunleavy",
"Kevin Huang",
"Khamla Phimmachack",
"KT Khoo",
"Andrew S Kim",
"Joseph Kim",
"Michal Klimek",
"Nathan Knockeart",
"Brigitte Kozena",
"Donald Lang",
"Tiffany Larson",
"Liam Mackey",
"Johanna Lonn",
"Tyler McKenzie",
"Katie Meyer",
"Meagan Munch",
"Lucas Nagle",
"Lydia Nash",
"Jovanka Nikolovski",
"James ONeal",
"Greg Park",
"Patrick Oliphant",
"Peter Lowe",
"Lauren Reid",
"Roche Janken",
"David Rothschild",
"Susan Savariar",
"Kurt Schlueter",
"Sharon Claitor",
"Marshall Sosland",
"Catie Stallings",
"Steven King",
"Eric Tenza",
"Timur Catakli",
"Todd Seller",
"Dan Turcza",
"Lindsey Ullman",
"Raj Vashist",
"Violet Dang",
"Chris Wong",
"Angelika Yoder",
"Michelle Zulli"]

# Initial solution:
# def group(array)
#   arr_a = array.first(16)
#   arr_b = array.last(50)
#   p arr_a.each_slice(4).to_a
#   p arr_b.each_slice(5).to_a
# end

#Refactored solution:
def group(array)
  arr_a = array.shuffle
  arr_b = arr_a.first(16)
  arr_c = arr_a.last(50)
  p arr_b.each_slice(4).to_a
  p arr_c.each_slice(5).to_a
end

group(students)

# What was the most interesting and most difficult part of this challenge?

# The most difficult part for me was trying to break the students up into groups of 4/5 without having anybody in a group by themselves.
# 
# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# I definitely think I am improving in my ability to write pseudocode. I am starting to be more detailed with each step, but
# am still not where I want to be and like to jump away from the pseudocode and experiment with certain methods.

# Was your approach for automating this task a good solution? What could have made it even better?

# I think that my approach for automating this task was a good solution. It gives you randomized groups of 4 and 5 each time that it is run.
# It could have been better by accounting for changes in the cohort. My solution only works with the current number of 66 students and would not be ideal
# if a certain number of students dropped from the cohort. It could have been better if I had a minimum number per group requirement.

# What data structure did you decide to store the accountability groups in and why?

# The only data structure that I used was an array. I figured that arrays were an easy way to divide the students into groups of 4/5.
# However, now that I think of it I could have pushed the results into a hash and had the keys be "Accountability Group #" and the values 
# as an array of 4/5 students.
#
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# 
# I kept my intiial solution mostly intact. I did however add a .shuffle method which randomizes the initial array to create different groups each time.
