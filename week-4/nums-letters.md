Links to external challenges:
4.2.1: https://github.com/KlimekM/phase-0/blob/master/week-4/defining-variables.rb
4.2.2: https://github.com/KlimekM/phase-0/blob/master/week-4/simple-string.rb
4.2.3: https://github.com/KlimekM/phase-0/blob/master/week-4/basic-math.rb

**What does puts do?**

puts writes the output of the text written after it and creates a new line underneath the output.

**What is an integer? What is a float?**
An integer is any number without a decimal point. It could be positive, negative, or zero. A float is any number with a decimal point.

**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**

The difference between float and integer division is that float division will give you the exact answer to the most accurate decimal point while integer division will round the answer down to the highest integer value. I would explain integer division by saying that if you are dividing a given number and the answer is not a whole number or an integer then that number gets rounded down and the whole number or integer is the answer. For instance if we are dividing 17/2 the answer is 8.5. Since 8.5 is not an integer or a whole number we would round that down to 8 and that would be the answer using integer division.

```
puts 24*365
puts (60*24*365)*8 + (60*24*366)*2
```

**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**

Ruby handles addition, subtraction, multiplication, and division of numbers by executing them based on their default command. + is for addition, - is for subtraction, * is for multiplication, and / is for division. For division we need to use floats or convert each value to a float to get the exact answer.

**What is the difference between integers and floats?**
An integer is any number without a decimal point. It could be positive, negative, or zero. A float is any number with a decimal point.

**What is the difference between integer and float division?**

The difference between float and integer division is that float division will give you the exact answer to the most accurate decimal point while integer division will round the answer down to the highest integer value. I would explain integer division by saying that if you are dividing a given number and the answer is not a whole number or an integer then that number gets rounded down and the whole number or integer is the answer. For instance if we are dividing 17/2 the answer is 8.5. Since 8.5 is not an integer or a whole number we would round that down to 8 and that would be the answer using integer division.

**What are strings? Why and when would you use them?**

Strings are a group of letters or numbers. The way they are identified is if they are between two apostrophes. i.e. 'insert string here'

**What are local variables? Why and when would you use them?**

Local variables are variables that have been assigned a value. They can begin with a lower case letter or an underscore. We would use local variables to assign values that we want to re-use without having to re-type the actual value. For instance, if I had a string with the following content "University of Illinois at Chicago" ,and did not want to type all of that out each time I called it or referred to it, I would create a local variable named uic and set it equal to "University of Illinois at Chicago". i.e. uic = "University of Illinois at Chicago".

**How was this challenge? Did you get a good review of some of the basics?**

This challenge was not bad at all. I enjoyed reading Chris Pine's book and getting a solid refresher on some of these concepts. It was also cool to make variable and run through the mini assignments. I did not have many issues, but did purposely create a failure to visualize what would happen when I ran rspec on a ruby document that was failing.