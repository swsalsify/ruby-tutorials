require 'pry'

def guessing_game
  magic_number = rand(10)
  correct_guess = false

  while !correct_guess
    print "Guess a number 0-10: "
    guess = gets.chomp.to_i
    if guess == magic_number
      correct_guess = true
      puts "Congrats, you guessed the magic number!"
    else
      correct_guess = false
      puts "Not quite, guess again!"
    end
  end
end

guessing_game

binding.pry
