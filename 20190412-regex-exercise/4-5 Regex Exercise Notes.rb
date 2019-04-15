# This week we took a look at the solution to the exercise from 4/5:

# Phone Number Validator Exercise
# write a function that takes a string as a parameter and returns a result of either true or false
# depending on whether the string is a valid phone number matching the format (###)-###-####

# Solution #1:

# First line defines the name of our function, indicates that it will take a parameter, and names the parameter "str"
# Remember that function and variable names should be descriptive!
def phone_number_validator(str)
  # Our 1st solution used an "if" statement
  # We use the match? function on our str variable to see if it matches the Regex we wrote.
  # If this is true, our "if" statement results to true
  # If our string does not match the Regex we wrote, then the result should be false
 if str.match?(/\(\d{3}\)-\d{3}-\d{4}/)
   true
 else
   false
 end
end

phone_number_validator("(111)-111-1111")
# Result is true

phone_number_validator("111-111-1111")
# Result is false

# Solution #2

# While we tested out our first solution and agreed it worked, we discussed potential improvements
# The improved version is below with some notes on the changes:

# The name we used above is perfectly descriptive, this is just another alternative
# It follows a convention in ruby of using a question mark in the name of functions that return true or false
def valid_phone_number?(str)
  # The code above is somewhat redundant because the match? function already returns true or false
  # This means we can just return the value that we get back from the match? function
  # There is also a small change to the regex, with the addition of \A and \z
  # This makes our Regex more specific, requiring that the entire string be a valid phone number
  # Our previous answer would be best if asking does our string CONTAIN a valid phone number
  # But if asking if our string IS a valid phone number, we want to restrict it to only match if the whole string is valid
  str.match?(/\A\(\d{3}\)-\d{3}-\d{4}\z/)
end
