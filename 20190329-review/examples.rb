# FUNCTIONS

# How do we create a function? Use 'def'.
# Here are two ways we can write a function that doubles its input:

def double(x)
  x*2
end

def double x
  x + x
end

# parentheses are optional, but they're almost always better to have.



# ARRAYS

# An array is basically an ordered list. You can 'get' or 'set' the item at each index in the array.
arr1 = [] # empty array
arr2 = [1] # array with one item
arr3 = ['a', :b, 3] # array with three items. You can stick anything you want in there.

# Even though you can put any combination of things in an array, usually they'll all be the same kind of thing (class/type).
# Otherwise, it's hard to really do anything useful with the contents.

# We can create an array from a Range (why? because it's faster than typing [1, 2, 3, 4, ......])
my_array = (1..10).to_a

# Why is this NOT the same?
other_array = [1..10]

# it's a range *inside* an array. Put another way, the array has only one item, which is a range.
my_array.size # 10
other_array.size # 1

# Get the first item from my_array:
my_array[0] # 1

# Set the first item in my_array to a different value:
my_array[0] = 'x'



# HASHES

# A Hash is a collection with pairs of keys and values.
# The keys can be anything and the values can be anything, but strings and symbols are the most common key types.
# This is a hash with string keys and integer values:
example_hash = { 'a' => 1, 'b' => 2 }

# Hashes are NOT ordered sequentially, unlike Arrays.
# Hashes are more like dictionaries. If you need to look up 'potato', you don't care that it's the 242372th entry in the dictionary.
# You just want this to work fast, and it does:
dictionary['potato'] # => brownish root thing that tastes great when fried

# You can also add new key/value pairs to a hash.
my_hash = {} # empty hash
my_hash['a'] = 1 # add 'a' => 1
my_hash['b'] = 2 # add 'b' => 2 to the same hash, which still has 'a' => 1 too

# Now my_hash and example_hash contain the exact same keys and values.
my_hash == example_hash # => true



# LOOPS

# This loop will execute three times. letter will equal 'a' the first time, 'b' the second time, and 'c' the third time.
for letter in 'a'..'c'
  my_array[4] = letter
end

# What does my_array contain at the end?

# The previous loop is equivalent to this sequential code (copy out the body and replace letter with each value it'll have in the loop):
my_array[4] = 'a'
my_array[4] = 'b'
my_array[4] = 'c'

# When we're done, it doesn't matter that my_array[4] was set to 'a' or 'b'. We set 'c' last, so that's what we get in the end.

# Here's a loop that sets values in a hash instead of an array:
result_hash = {}
for letter in 'a'..'f'
  result_hash[letter] = 'value'
  puts result_hash
end

# the `puts result_hash` line shows us how each iteration through the loop changes the hash so we can visualize what's happening.
# Just like with the array loop, we can rewrite this sequentially, replacing `letter` with each value:
result_hash = {}
result_hash['a'] = 'value'
puts result_hash
result_hash['b'] = 'value'
puts result_hash
result_hash['c'] = 'value'
puts result_hash
result_hash['d'] = 'value'
puts result_hash
result_hash['e'] = 'value'
puts result_hash
result_hash['f'] = 'value'
puts result_hash

# Notice that in the array loop, our `letter` variable was being stored as a value in the array. The position (or "key") we're updating is always 4.
# In the hash loop, the `letter` variable is being used as the key, but the value isn't changing.
# Compare these two lines:
my_array[4] = letter # same position each time, but variable value
result_hash[letter] = 'value' # variable key, but same value each time

# We didn't talk about this, but see if you can figure out what test_array and test_hash will look like at the end!
# (try 'unrolling' the loop into sequential steps or adding 'puts' statements to watch it change)
num = 0
test_hash = {}
test_array = []
for letter in 'a'..'c'
  test_array[num] = letter
  test_hash[letter] = num
  num += 1
end

