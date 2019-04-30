# Exercise: Refactoring the Number Guessing game

We're going to be re-working our Number Guessing game program to be a little bit more realistic and easier to extend

Specifically, we're going to add some new functions to handle certain parts of the script and clean up the code

Our final result should have a function called "play" that looks something like this:

```ruby
def play
  magic_number = generate_magic_number
  is_guessing = true
  puts "Can you guess the magic number?: "
  while is_guessing
    guess = get_num_input
    is_guessing = !guess_correct?(magic_number, guess)
    handle_result(is_guessing)
  end
end
```

Notice that this function calls other functions. We will have to define those functions ourselves.

I've included a file with the code above and some blank function definitions ready to be filled out. Please define the necessary functions to make the code work without editing the "play" function itself.

Refer back to the notes from the previous week on getting input from the user and generating random numbers if necessary.
