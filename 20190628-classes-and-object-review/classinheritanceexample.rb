class Animal
  attr_accessor :state
  attr_reader :kind

  def initialize(kind)
    @kind = kind
    self.state = "awake"
  end

  def eat(food)
    puts "I'm eating #{food}"
  end

  def sleep
    self.state = "asleep"
  end

  def wake
    self.state = "awake"
  end
end

class Person < Animal
  attr_accessor :age, :gender, :name
  @@population = 0

  def initialize(age, gender, name)
    @@population += 1
    self.age = age
    self.gender = gender
    self.name = name
    super("Person")
  end

  def eat(food)
    if food[/person/i]
      raise "People aren't cannibals, don't eat another person!"
    else
      puts "I'm eating #{food}"
    end
  end

  def self.population
    puts "There are #{@@population} people!"
  end

end
