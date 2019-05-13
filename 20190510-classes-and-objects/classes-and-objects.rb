# This is an example of what a class for a Target Schema field might look like
# Our class models the state of a TS field (i.e. what is its name? what is its data type? is it required?)
# as well as some basic behavior (i.e. the print_details method, which gives our Field objects the ability to output info about themselves to the terminal)
class Field

  # The attr_accessor section creates the "Getter" and "Setter" methods for us so that we don't have to write them ourselves
  # Instead of writing them like this, we could do the following:
  # Setter Method
  #
  # def name=(name)
  #   @name = name
  # end
  #
  # Getter Method
  #
  # def name
  #   @name
  # end

  attr_accessor :external_id, :name, :data_type, :columns, :field_group_external_id, :required, :requirements, :field_values, :applicable_scopes

  # The initialize method is the function that is run whenever a new object is created by calling the new function (i.e. calling Field.new creates a new Field object and then calls the "initialize" function on that new Field object)
  # In this case, our initialize function takes care of setting the initial values for our instance variables
  # This accomplishes the same as the syntax @name = name. In this case we are using the setter method to set the "@name" global variable equal to the local variable "name"
  # the "self" here refers to the object that we're defining. Using "self" in a class definition allows your object to refer back itself, in this case to call its own setter methods.
  # If we wanted our Field object to print its details after being intialized, we could add self.print_details as the last line in our initialize function.
  # The = sign after some of the parameters is being used to set a default value. The only two parameters that are required in the example below are external_id and name. The others each have a default value that will be used if no values are provided when calling the function.

  def initialize(external_id, name, data_type="string", columns=[], required=false, requirements=[], field_values=[], applicable_scopes=[])
    self.external_id = external_id
    self.name = name
    self.data_type = data_type
    self.columns = columns
    self.required = required
    self.requirements = requirements
    self.field_values = field_values
    self.applicable_scopes = applicable_scopes
  end

  # Here we use the keyword "self" to pull out values from our object's instance variables.
  # We use string interpolation to build a string with different info about our object.

  def print_details
    puts "This field is named #{self.name} and it's ID is #{self.external_id}. It is a #{self.data_type} field, and it is #{self.required ? "required" : "not required"}."
  end
end


# Here we create new objects based on the class we just defined.
# We use the syntax ClassName.new and supply any parameters that are required by the initialize function
# Notice how for field1 we only supply the required parameters, but for field2 we also supply some optional parameters
field1 = Field.new("test", "Test")
field2 = Field.new("blah", "Blah", "number", ["AY", "AZ", "BA"], true)

field1.print_details
field2.print_details

# This is another example of using our "setter" method to change the values of our instance variables for a particular object
# The following two lines would change the values for the @data_type instance variable belonging to each of these objects
field1.data_type = "Enumerated"
field2.data_type = "Link"

field1.print_details
field2.print_details
