# Virus Predictor

# I worked on this challenge with Raj Vashisht.
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative requires a seperate Ruby document that is in the same directory to the one that you
# are working with that will run the data from that document.
# 
# require_relative will access data in a similar path that has not been properly installed or made accessible.
#

require_relative 'state_data'

class VirusPredictor

# method to initialize the class VirusPredictor, it takes 3 arguments of state_of_origin, population_density, and population.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# method that will process the data from the methods predicted_deaths and speed_of_spread.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

# defines the visibility of the methods below it.
  private

# method that takes the population_density input and returns the number_of_deaths which is a formula depending on the input.
# Depending on the population_density, population will be multiplied by a different variable then rounded down to the nearest integer.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# method that takes two arguments. it defines a variable of speed. depending on the population_density input, it will increase
# the speed by a particular variable.

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |statename, popinfo|
  statename = VirusPredictor.new(statename, STATE_DATA[statename][:population_density], STATE_DATA[statename][:population])
  statename.virus_effects
end


=begin

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

=end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?

The differences between the two different has syntaxes shown in the state_data file are that the rocket syntax is
using a string as its key, while the colon syntax is using a symbol as its key.

What does require_relative do? How is it different from require?

require_relative requires a seperate Ruby document that is in the same directory to the one that you
are working with that will run the data from that document. require_relative will access data in a similar path
that has not been properly installed or made accessible. require will need the exact path and file input to be attached to access
the necessary document.

What are some ways to iterate through a hash?

One way to iterate through a hash is to use .each. Since a hash has key/value pairs the .each method will have to
take two arguments which will be the key, and the value.

When refactoring virus_effects, what stood out to you about the variables, if anything?

We did not get to the refactoring of virus_effects so I can not provide an appropriate answer.

What concept did you most solidify in this challenge?

In this challenge iterating over a hash was solidified and learning what exactly require_relative does was important since
we see it so often.
=end