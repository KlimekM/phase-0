# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]
# puts array.any? {|element| element.any?{|array| array.include?("FORE")}}

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each do |element|
  if element.kind_of? (Array)
    element.map{|num| p num + 5}
  end
  if element.kind_of? (Integer)
   p element + 5
  end
end

# Attempted to refactor to a shorter solution, but were not having success in doing so.

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.each do |outer_array|
  if outer_array.kind_of? (Array)
    outer_array.map do |inner_array|
        if inner_array.kind_of? (Array)
          inner_array.map {|inner_string| p inner_string + "ly"}
        else
          p inner_array + "ly"
        end
    end
  else
    p outer_array + "ly"
  end
end

=begin
What are some general rules you can apply to nested arrays?

Some general rules that we can apply to nested arrays is that the arrays within the original array are just elements of that original array.
If we are calling an element within an array we will have to call the element number of the first array then the element number of the one within it.

What are some ways you can iterate over nested arrays?

We can iterate over nester arrays using .each and any enumerable method, but we have to specify what element is within the original array such as an integer, string, or array.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We used the .kind_of? method which looks for an array or integer or whatever we ask it for. In addition to that we used .map which I have used before,
but got a good refresher on.
=end