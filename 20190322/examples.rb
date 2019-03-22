# SYMBOLS

# Symbols have a colon in front
:asdf
:asdf?

# Symbols are like strings, but not exactly the same. Usually they're made of only lowercase letters
:asdf == 'asdf' # false
puts :asdf

# not allowed!
:asdf + :qwer

# convert to string
:asdf.to_s

# convert back to symbol
"asdf".to_sym

# Remember that every expression in Ruby has a value?
# Even defining a function has a value, which is a symbol (the name of the function)
# after you define this function, pry will print :this_is_a_function
def this_is_a_function(x)
  puts x
end


# MORE COMMON CONVERSION FUNCTIONS

# to_i (to integer)
"123".to_i

# to_f (to float, aka number with decimal part)
"123".to_f
123.to_f

# to_json (json is a string that would represent an object in Javascript -- JavaScriptObjectNotation)
123.to_json

# Usually we call to_json on Hash objects, which represent pairs of keys and values.
{ a: 1, b: 2}
{ a: 1, b: 2}.to_json
puts ({ a: 1, b: 2}.to_json)


# HASHES AND ARRAYS

# Hash values can be hashes! No limit to how deep you can go
{ a: { b: 2 } }

# use [] to get a value for a specific key
h = { a: 1, b: 2}
h[:a]

# `a: 1` is shorthand syntax you can use when your keys are symbols.
# `:a => 1` is the more general syntax (any value or variable can be a key if you use =>)
# So these two lines are the same.
h = { a: 1 }
h = { :a => 1 }

# This hash has strings as keys instead of symbols.
h = { 'a' => 1, 'b' => 2 }

# Hashes can even have hashes as keys, which is weird and don't do it. Anything can be a key or a value in a hash.
h2 = { h => 1234 }
h2[h]

# You can add values to an existing hash with []=
h[:b] = 'the b value'
h

# An empty hash has no keys or values.
empty = {}

# here's some Hash operations
empty[:a] = 1
empty
empty.delete(:a)
empty

# Arrays are basically lists of things. Here's an array of numbers.
arr = [1, 2, 3]
arr.class

# You can convert a hash to an array
h.to_a

# You can convert a range to an array
(0..3).to_a

# You can store the array in another variable
arrayified_h = h.to_a

# And even convert it back to a hash! Why?
arrayified_h.to_h

# (because the array has sub-arrays containing the [key, value] pairs. Enough structural information to restore the hash we started with)

# Remember the difference between `=` and `==`
a = arrayified_h
a == arrayified_h

# What array would generate this hash if I called `to_h` on it?
{ 'apple' => 3, 'banana' => 4 }

# answer
arr = [['apple', 3], ['banana', 4]]
arr.to_h

# Arrays are zero-indexed
arr[0] # the first item
arr[1] # the second item

arr.first # another nice readable way to get the first item using words instead of punctuation
arr.last # last also exists


# Some ways to update an existing number (hint for today's puzzle)
num = 4
num = num + 1

# now it's 5
num
num += 1

# now it's 6
num
