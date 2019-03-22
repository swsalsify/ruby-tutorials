# assignment: creates a variable with some name (e.g. x) and some value (e.g. 4)
x = 4

# functions without parameters
def my_function
  puts "I'm a function!"
end

# Calling a function: just write its name
my_function

# Functions return the result of the last thing they did
# Here we're defining `my_function` differently (replaces the original definition)
def my_function
  3
end

# Calling my_function now returns 3 every time
my_function


# functions with one parameter
def my_function(arg)
  print "Inside my_function with this arg: "
  puts arg
  result = arg + arg
  print "arg + arg = "
  puts result
  result
end

# the parameter name lives inside the function; has no relation to the value's name outside the function
my_function(2)

# we just called `my_function` with the value 2.
# So within `my_function`, the variable called `arg` had the value 2
my_function(3)

# That time, the variable `arg` had the value 3. We ran the same code with a different value.


# Here's a function that adds its input to itself:
def double(arg)
  result = arg + arg
  print "arg + arg = "
  puts result
  result
end


# What's happening in these examples? Are any results surprising?
x = 4
double(x)

double('4')

result = double(x)
result = double(result)


# THIS WON'T WORK:
# 4 + '4'
# Why? because 4 is an Integer and '4' is a String.
# Integer is a Class, and so is String. Every object in Ruby has a Class.
4.class
'4'.class

# I'll usually say "type" instead of "class". Both words mean "what kind of data this thing is".

# You can use `+` for either Integers or Strings, so our `double` function can handle either.
# But not both at once. `+` doesn't know what to do when the types don't match.


# Miscellanea:
# `print` will output some text to your terminal. `puts` does the same thing, but then starts a new line.
# Both `print` and `puts` are functions! They return nil (nil is a specific value that means "no value").

