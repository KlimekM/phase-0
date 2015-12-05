# I worked on this challenge with Karen Ball.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a == 0 || b == 0 || c == 0
    return false
  elsif (a+b) < c || (b+c) < a || (a+c) < b
   return false
  else
  	return true
  end
end