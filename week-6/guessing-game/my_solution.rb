# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer called guess
# Output: true if the most recent guess was correct, false otherwise.
# Steps:
# def a method initialize which will take the answer as it's input.
# define an instance method GuessingGame#guess which takes an integer called guess as its input
# if the guess is larger than the answer, the game should return the symbol :high
# if the guess is equal to the answer, return :correct
# if the guess is lower than the answer return :low
# define an instance method guessinggame#solved? which returns true if the most recent guess was correct and false otherwise.


# Initial Solution

class GuessingGame
  def initialize(answer)
    raise ArgumentError.new("Your answer must be an integer!") unless answer.is_a? Integer
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
    if @guess > @answer
      return :high
    elsif @guess == @answer
      return :correct
    elsif @guess < @answer
      return :low
    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end



Refactored Solution

class GuessingGame
  def initialize(answer)
    raise ArgumentError.new("Your answer must be an integer!") unless answer.is_a? Integer
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
    if @guess > @answer
      :high
    elsif @guess == @answer
      :correct
    elsif @guess < @answer
      :low
    end
  end

  def solved?
    @guess == @answer ? true : false
  end
end

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables and methods represent the characteristics and behaviors of a real world object by being dynamic and changing
with the input. In the real world if I guess 10 to my friend then the last guess is 10, then if I guess 8 the last guess is 8. The ability
to be dynamic and change with the input reflects the real world behaviors and characteristics.

When should you use instance variables? What do they do for you?

We should use instance variables if numerous methods within a class will be calling on them. Instance variables allow us to have our
other methods within the class access the information that is stored within them.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is the path or flow that the program will take when processing the code. It is very important to make sure that the proper
values are being returned at a given time. I had trouble using flow control when I initially set unless answer_is_a? Integer in front of the
raise ArgumentError.new and received numerous errors when running rspec. It took me forever to figure out what was going on and I kept getting
"ArgumentError: comparison of Fixnum with nil failed" and was unable to figure it out. I tinkered with my code, but had it mapped out to how I wanted
it to look and work, but kept getting the same failure until I changed the order of the raise and unless within my flow.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

I think that this code requires us to return symbols so that the returned values can not be altered.
If we were returning strings, we could change the strings where as symbols stay the same and can not be changed
once they are created. 
=end