# FizzBuzz - Level 1
# Write a Ruby script called that prints all numbers from 1 to 100 (inclusive)
# BUT:
# - if the number is divisible by 3, print 'Fizz'.
# - if the number is divisible by 5, print 'Buzz'.
# - if the number is divisible by both 3 and 5, print 'FizzBuzz'.

# My solution:

for x in 1..100
  if x%3 == 0
    print 'Fizz'
  end

  if x%5 == 0
    print 'Buzz'
  end

  if x%3 != 0 && x%5 != 0
    print x
  end

  puts
end
