require 'pry'
def play
  # We set the magic_number before our loop so that it stays consistent and doesn't change with each guess
  magic_number = generate_magic_number

  # the is_guessing variable is used to keep track of the state of the game and whether the user is still playing
  is_guessing = true
  puts "Can you guess the magic number?: "

  # As long as the user "is_guessing" we're going to run the following loop
  # It consists of getting a guess from the user, checking if the guess is correct, and then handling the result
  while is_guessing
    # get_num_input handles getting numeric input from the user
    guess = get_num_input

    # guess_correct? returns true or false depending on whether the guess matches the magic_number
    # we're setting is_guessing to the negation of guess_correct so that if the guess is NOT correct then the user "is_guessing"
    is_guessing = !guess_correct?(magic_number, guess)

    # Once we know whether the user is still guessing or not, we can handle the result by providing some feedback (i.e. "Guess again!")
    handle_result(is_guessing)
  end
end

# Function to generate a magic number based on user defined boundaries
def generate_magic_number
  # Notice that we use the get_num_input function here as well as in the main play function
  puts "Enter a minimum boundary for the magic number: "
  min = get_num_input
  puts "Enter a maximum boundary for the magic number: "
  max = get_num_input
  puts "Picking a magic number between #{min} and #{max}"
  magic_number = rand(min..max)
  puts "Got it!"
  magic_number
end

# Function to get input from the user and return it as an integer
def get_num_input
  gets.chomp.to_i
end

# Function to check whether the guess matches the magic_number. Notice that it has a question mark in the name and returns either true or false
def guess_correct?(magic_number, guess)
  magic_number == guess
end

# Function to give the user some feedback based on whether they are still guessing
def handle_result(is_guessing)
  if is_guessing
    puts "Unlucky! Try again: "
  else
    puts "Congrats! You got it!"
  end
end

play
