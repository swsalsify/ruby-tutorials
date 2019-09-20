require 'pry'

module Speak
  def speak(sound)
    puts sound
  end
end

class Dog
  include Speak
  attr_accessor :name, :age, :breed

  def initialize(name, age, breed)
    self.name = name
    self.age = age
    self.breed = breed
  end
end

class Person
  include Speak
  attr_accessor :name, :age, :height, :hair_color

  def initialize(name, age, height, hair_color)
    self.name = name
    self.age = age
    self.height = height
    self.hair_color = hair_color
  end

  def shower
    puts "Taking a quick one"
  end
end

binding.pry
