# Classes and Objects


### What are Classes and Objects?

Objects are the way we represent different entities in Ruby. Each entity or object has its own state and set of behaviors. Objects are each based on a certain archetype or "Class". You can think of a "Class" as a blueprint or mold for an object. The Class determines the basic state and behaviors of the object, but each object based on a particular class can (and likely will be) different from each other.

For example, "Hey, Y'all!" is an object of the String class, while 1242 is an object of the Integer class. Objects of the String class have access to the instance method "reverse", while objects of the Integer class do not. The "reverse" behavior is defined for the String class but not for the Integer class because this is a common operation with strings. The author of this class wanted to make sure that any string object can reverse its characters and return the result, but the author of the number class did not think this functionality was necessary for all number objects to have.
