# 1. Create a variable called 'num' whose value is 2:
num = 2



# 2. Print 'yes' if the value of 'num' is greater than zero:
if num > 0
  puts 'yes'
else
  puts 'no'
end



# 3. Create a variable called 'range' whose value is a Range (lower bound and upper bound representing all integers between)
range = 1..100



# 4. Print all numbers from the range:
for x in range
  # this line will execute 100 times! (once per value in 'range')
  puts x
end



# 5. Define a function that prints 'Fizz' or 'Buzz':
def fizzbuzz(x)
  if x%3 == 0
    puts 'Fizz'
  elsif x%5 == 0
    puts 'Buzz'
  else
    puts x
  end
end



# 6. Call our fizzbuzz function with specific numbers:
fizzbuzz(10) # What will this print? (hint: 'Buzz')
fizzbuzz(11) # What will this print? (hint: not 'Buzz')
fizzbuzz(12) # What will this print?



# 7. Call our fizzbuzz function with LOTS of numbers:
for x in range
  fizzbuzz(x)
end
