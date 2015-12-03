puts "Hello there, what is your first name?"
firstname = gets.chomp.capitalize
puts "What is your middle name?"
middlename = gets.chomp.capitalize
puts "Finally, what is your last name?"
lastname = gets.chomp.capitalize
puts "Nice to meet you, #{firstname} #{middlename} #{lastname}!"

puts "What is your favorite number?"
favnum = gets.chomp.to_i + 1
puts "Isn\'t #{favnum} a much bigger and better number to have as your favorite?"
