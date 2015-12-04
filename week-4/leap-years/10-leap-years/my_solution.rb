# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def leap_year?(n)
  if n.to_i % 4 == 0 && n.to_i % 100 != 0
    return true
  elsif n.to_i % 4 == 0 && n.to_i % 100 != 0 && n.to_i % 400 == 0
    return true
  elsif n.to_i % 100 == 0 && n.to_i % 400 == 0
    return true
  else
    return false
  end
end
