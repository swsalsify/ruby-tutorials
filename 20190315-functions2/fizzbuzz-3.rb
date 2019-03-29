# FizzBuzz - Level 3
# Write a FizzBuzz function with customizable behavior (much harder)
# Make your fizzbuzz function take one more parameter that tells the function to print
# anything you want based on whatever divisibility rules you want.
# e.g. print Chicken, Duck, Goose, or Turkey if the number is divisible by 3, 4, 5, or 7
# `fizzbuzz(1, 100, bird_conditions)`

# My solution used a hash. There are plenty of other ways to do it!

def fizzbuzz_3(start, finish, rules)
  for x in start..finish
    print x
    for (quotient, text) in rules
      if x % quotient == 0
        print text
      end
    end
    puts
  end
end

# Test it with the normal fizzbuzz rules:
rules = {
  3 => 'fizz',
  5 => 'buzz'
}

fizzbuzz_3(1, 50, rules)

# Test it with the birds
rules = {
  3 => 'Chicken',
  4 => 'Duck',
  5 => 'Goose',
  7 => 'Turkey'
}

fizzbuzz_3(1, 50, rules)
