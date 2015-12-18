# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"
# Paired with Gary Wong for 1.25 hr

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:1
# ============================================================
p array[1][1][2][0]
p array.flatten[5]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:1
# ============================================================
p hash[:outer][:inner]["almost"][3]
p hash.flatten[1].flatten[1].flatten[1].flatten[1]



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.each do |element|
  if element.kind_of? (Array)
    element.map{|num| p num + 5}
  elsif element.kind_of? (Integer)
    p element + 5
  end
end

# /// Refactor
p number_array.flatten.each{|x| x+5}


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# startup_names.each do |outter_array|
#   if outter_array.kind_of? (Array)
#     outter_array.map do |inner_array|
#         if inner_array.kind_of? (Array)
#           inner_array.map {|inner_string| p inner_string + "ly"}
#         else
#           p inner_array + "ly"
#         end
#     end
#   else
#     p outter_array + "ly"
#   end
# end

# /// Refactor
p startup_names.flatten.map{|word| word + "ly"}

=begin
What are some general rules you can apply to nested arrays?

Some general rules that we can apply to nested arrays is that the arrays within the original array are just elements of that original array.
If we are calling an element within an array we will have to call the element number of the first array then the element number of the one within it.

What are some ways you can iterate over nested arrays?

We can iterate over nester arrays using .each and any enumerable method, but we have to specify what element is within the original array such as an integer, string, or array.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We used the .kind_of? method which looks for an array or integer or whatever we ask it for. In addition to that we used .map which I have used before,
but got a good refresher on. My pair also found the flatten method during refactoring which compresses the nested arrays into a single array.
=end