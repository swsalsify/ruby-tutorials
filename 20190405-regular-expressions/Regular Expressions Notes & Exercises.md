What is a Regular Expression?
- A regular expression is a string of text that defines a search pattern.

What is a search pattern?
- A sequence of different elements that we're looking to identify within a larger object.

For example, let's consider the search pattern "DEF". This tells us that we're looking to find instances of a "D", followed by an "E", followed by an "F". If we search for that pattern within the string "ABCDEFG" we can find one match, but if we search for that pattern within the string "ABCD3FG" there are no instances of these 3 characters in a row that we can find.

In the search pattern above, we are only making use of what we call "literal characters". Literal characters are exactly what they sound like in that they refer very literally to the character that they represent. Using literal characters we can search for specific blocks of text, but what makes Regular Expressions so powerful is that we're able to define more generalized search patterns using what are called "meta-characters". Meta-characters are the opposite of literal characters, in that they have a meaning other than the actual character they represent.

The "." character is one of the more common meta-characters you will see around. While the symbol is clearly a period, within a regular expression this symbol acts a wildcard and will match any character.

Taking a look at our earlier example, suppose we change our search pattern to "D.F". What does our pattern mean now?

Our pattern is now telling us that we're looking for instances of a "D", followed by ANY character, followed by an "F". This search pattern will still match the "DEF" from our "ABCDEFG" example, but it will ALSO match "D3F" from the "ABCD3FG" example. Using a meta-character allowed us to create a more flexible search pattern that will match a variety of possible sequences instead of locking us into a specific sequence of characters.

Now that we've seen that meta-characters afford us more flexibility, we need to learn what meta-characters are available for us to use. But first, we also need to answer the question: what if you need to get a literal match for a meta-character?

Because meta-characters have a different meaning within regular expressions, we need to tell the system processing this that we want to interpret that character literally rather than with its special meaning. We do this by "escaping" the character using a backslash. For instance, to match a period literally, you would use \. instead of just a plain period. This is important to keep in mind, because some of the meta-characters we're about to look at are actually escaped versions of literal characters.

Common Meta-characters:

\d - Matches any number 0-9.

\w - Matches any "word" character. This includes A-Z, a-z, 0-9, and "_"

\s - Matches any "whitespace" character. This includes a space, a tab, or a new line.

NOTE: Each of the meta-characters above can be negated by using the capitalized version instead. i.e. \D will match any character EXCEPT 0-9, \W will match any non-word character, and \S will match any non-whitespace character.

. - Acts as a wildcard, matches any character once.

"Position" Matchers (these characters are used to match a position within the string, like the start or end of the string):

^ - Start of the line.

$ - End of the line.

\A - Start of the string.

\z - End of the string.

\b - A word "boundary" (this is a weird one, but from my understanding it matches the space in between word characters)

Modifiers (these characters don't match anything themselves, but change the way other characters are interpreted):

? - Match up to one instance of the previous character. Makes the previous character optional.

\* - Match zero or more of the previous character.

\+ - Match one or more of the previous character.

| - Match either the pattern on the left or the pattern on the right.

{x} - Match the previous character exactly x times.

{x,} - Match the previous character x or more times.

{x, y} - Match between x and y instances of the previous character.

() - Used to create groups.

[] - Used to create character classes. More on this later.

Character Classes

What is a Character Class?

We can use a character class within a regular expression to define a list of characters that we would like to match.

EX:

The regular expression [abcdefg] would match any single instance of "a", "b", "c", "d", "e", "f", or "g"


To make character classes more powerful, we can use a hyphen "-" to create ranges within the character class. This also means that the hyphen needs to be escaped within a character class to be matched literally.

Ex:

The regular expression [a-c] would match any single instance of "a", "b", or "c". We can also add multiple ranges, i.e. [a-cA-C]


You can also match any character EXCEPT for what you've defined in the character class by including a caret "^" at the beginning.

EX:

The regular expression [^a-c] would match a single character that is NOT "a", "b", or "c".


Sample Exercises:

Phone numbers - Write a regular expression that will match only the phone numbers in the following string: "Jane's phone number is 617-777-8888. John's phone number is 973-999-1337."

Email addresses - Write a regular expression that will match only the email addresses in the following string: "My email is ngentry@salsify.com, but I'm probably most easily reached at support@salsify.com."

Ruby Exercise:

Write a function that takes a string as a parameter and returns true if the string is a valid phone number matching the format (###)-###-#### (note the parentheses around the area code!). Hint: You may want to use the match? function, which takes a Regexp object as a parameter. You can call the match? function on a string and it will return true if there is a match for the provided regular expression within the string or false otherwise. Take a look at the notes from previous sessions if you're unsure about how to define a function.
