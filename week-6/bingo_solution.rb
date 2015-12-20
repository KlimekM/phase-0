# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [6] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # call a random letter ( b, i, n, g, o) and a random number between 1-100
  # combine the letter with the number in a string.
  # print the called letter/number combo

# Check the called column for the number called.
  # iterate over every 1st element in the sub arrays
  # see if the number is listed in any of those indices

# If the number is in the column, replace with an 'x'
  # if the number is in the index, remove it
  # replace it with an x in the same position.


# Display a column to the console
  # iterate over the sub arrays
  # print each column or same index of the sub arrays 

# Display the board to the console (prettily)
  # prettily display the updated board to the console.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def bingo_num
    @letter_array = ["B","I","N","G","O"]
    @column = @letter_array.sample
    @number = rand(1..100)
    # @column = "I"
    # @number = 44
    @bingo_call = [@column, @number]
    p "The next number is #{@column} #{@number}"
    p @bingo_call
  end
  
  def check
    @bingo_board.each do |row|
      if row.include? @number
        p true
        @row_index = row.index(@number)
        p @row_index
      else
        p false
      end
    end
  end
  
  def insert_x
    @column_index = 0
    case @column
        when "B"
          @column_index = 0
        when "I"
          @column_index = 1
        when "N"
          @column_index = 2
        when "G"
          @column_index = 3
        when "O"
          @column_index = 4
      end
    p @column_index
    if @column_index == @row_index
        @bingo_board.map! do |row|
          if row.include?(@number)
            row.map! { |num|  num == @number ? 'x' : num}
            p row
          else
            p row
          end
      end
    end
  end
  
  def display_column
    p @column
    @bingo_board.each { |row| p row[@column_index]}
  end
  
  def display_board
    p @letter_array
    @bingo_board.each { |row| p row}
  end
end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def bingo_num
    @letter_array = ["B","I","N","G","O"]
    @column = @letter_array.sample
    @number = rand(1..100)
    p "The next number is #{@column} #{@number}"
  end
  
  def check
    @bingo_board.each do |row|
      if row.include? @number
        @row_index = row.index(@number)
      end
    end
  end
  
  def insert_x
    case @column
        when "B"
          @column_index = 0
        when "I"
          @column_index = 1
        when "N"
          @column_index = 2
        when "G"
          @column_index = 3
        when "O"
          @column_index = 4
      end
    if @column_index == @row_index
        @bingo_board.collect! do |row|
          if row.include?(@number)
            p row.collect! { |num|  num == @number ? 'x' : num}
          else
            p row
          end
      end
    end
  end
  
  def display_column
    p @column
    @bingo_board.each { |row| p row[@column_index]}
  end
  
  def display_board
    p @letter_array
    @bingo_board.each { |row| p row}
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.bingo_num
new_game.check
new_game.insert_x
new_game.display_column
new_game.display_board

# Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# Pseudocoding for this challenge wasn't that bad. The problem for me was getting the code to do what I wanted it to.
# My psuedocoding style could be a little more detailed. I often times change what I initially wrote down as I begin to code.

# What are the benefits of using a class for this challenge?

# The benefit of using a class for this challenge is that we can create instance variables which can act
# across a number of methods. Since we are dealing with several different methods it is nice to have the values of
# certain variables already set and be the same across the methods.

# How can you access coordinates in a nested array?

# You can access coordinates in a nested array by calling them directly using two consecutive square brackets or you can use a method like .index or .include to check
# the index of your nested array or if the array contains a particular element.

# What methods did you use to access and modify the array?

# The methods that I used to access and modify the array were .each, .include?, .map, .map!, .collect, .collect! and .index.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# A new method that I learned while reviewing the Ruby docs was the .collect! method which seems to be identical to the .map!.
# Both pass the given block to each element of a given array and return the same array with the new value that ran through the block code.

# How did you determine what should be an instance variable versus a local variable?

# I tried to use instance variables when I knew that I would call them in a different method and did not want to re-assign them.

# What do you feel is most improved in your refactored solution?

# I honestly did not change much in my refactored solution. I just cleaned up the code and got rid of some redundant calls or lines.
