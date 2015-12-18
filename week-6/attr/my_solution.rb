#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# Pseudocode

# Input: greet which will equal a new instance of the Greeting class. a hello method which will be called on greet
# Output: a salutation to the console
# Steps:
# initialize a name variable within the NameData class
# initialize a greet variable equal to a new instance of the Greetings class in the Greetings class
# define a method hello which will puts a greeting to the console and include the name variable from the NameData class.
# call the hello method on the greet variable to print a greeting that includes the name in the NameData class.

class NameData
	attr_accessor :name

	def initialize
		@name = "Mike"
	end
end

class Greetings
	def initialize
		@namedata = NameData.new
	end

	def hello
		puts "Hello #{@namedata.name} I hope you are having a wonderful day!"
	end
end

greet = Greetings.new
greet.hello


# Reflection
=begin
release_1.rb
What are these methods doing?

The what_is methods are returning the values for the instance variables @name, @age, and @occupation.
The change_my methods are changing the values for the instance variables @name, @age, and @occupation and when
we print our info again it will reflect the updated values.

How are they modifying or returning the value of instance variables?

They are modifying the values of the instance variables by setting them to a new input and then when we call the what_is methods or print our info
it reflects the new values of the instance variables that we previously modified.

release_2.rb
What changed between the last release and this release?

Between this release and the last release we removed the what_is_age method and added an attr_reader :age at the top of the class.
Other than that everything seemed to stay the same.

What was replaced?

The what_is_age method was replaced with an attr_reader :age at the top of the class.

Is this code simpler than the last?

This code is definitely more simple than the last, because it can still print and read our current age without having to define it and use 3 lines for a method.

release_3.rb
What changed between the last release and this release?

Between this release and release 2 we added an attr_writer :age and removed the change_my_age method.
In addition to that instead of calling the change_my_age method on the instance_of_profile we just call .age.

What was replaced?

The change_my_age method was replaced with an attr_writer :age.
The .change_my_age method call on instance_of_profile was replaced by a .age method call.

Is this code simpler than the last?

Yes, this code is more simple because it replaces the 3 lines of code that it took to write the change_my_age method with a single
attr_writer :age which allows us to change the age in one line and call .age on a given variable.

What is a reader method?

A reader method is a method that will allow you to read or call a method that would otherwise be an instance variable.

What is a writer method?

A writer method allows you to change the instance variable across the methods within a class.

What do the attr methods do for you?

Attribute variables make it easy to view or change instance variables across a class without having to define a specific method to either
read/view or change the variable.

Should you always use an accessor to cover your bases? Why or why not?

You should not always use an accessor to cover your bases, because depending on who is viewing your code you may or may not want them to have access
to modify the variables within the accessor.

What is confusing to you about these methods?

I am still a little confused as to when we are able to call these methods. I need to read more on whether they are only accessible within a class
or outside of it as well.
=end