Exercise 4/19: Create a Number Guessing Game!

Create a simple game in which the user is asked to guess a number within a certain range. The program should continue to prompt the user for a guess until they have guessed the magic number.
There are a few new concepts at play here including getting input from the user, generating a random number, and looping until the user has guessed correctly. I've outline some tips for how we can do each of these things below, but you will need to combine them into a working program.


Getting input from the user:

To get some input from the person running our script, we can use the "gets" function.

"gets" will take input from the terminal and return it as a string with a newline added at the end.

When using "gets", we typically want to save the input to a variable:

input = gets

The above would save the text the user enters to a variable called "input".

We also will usually want to clean up the string we get by removing the newline. We can do this by calling the "chomp" function on the result from "gets", like this:

input = gets.chomp



Looping:

We have seen "For" loops in previous weeks, which are typically used to loop over a collection of items and do something with each one.

EX: A for loop that will print all the numbers from 0-10 to the terminal.

for i in 0..10
  puts i
end

There is another type of loop called a "While" loop. This type of loop continues running as long as a certain condition is true.

EX: A while loop that will print a variable called i to the terminal and then increase i by 1 as long as i is less than 10

while i < 10
  puts i
  i += 1
end

Generating a Random Number:

Use the "rand" function. You can specify a range that the number should be in by passing in an argument. EX: rand(8) will generate a random integer from 0-8.
