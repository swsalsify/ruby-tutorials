# FizzBuzz - Level 2
# Write a function that fizzbuzzes from any start integer to any end integer

# My solution (same as #1, but in a function with parameters instead of a hard-coded "1..100" range):

def fizzbuzz_2(start, finish)
  for x in start..finish
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
end

# Test it:
fizzbuzz_2(8, 25)
