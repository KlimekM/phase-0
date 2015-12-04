# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def get_grade(n)
  case n
  when (90..100)
    return "A"
  when (80..89)
    return "B"
  when (70..79)
    return "C"
  when (60..69)
    return "D"
  else
    return "F"
  end
end
