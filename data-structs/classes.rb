# frozen_string_literal: true

# Greeter is a class that greets
class Greeter
  # static attribute
  @@my_static_name = 'thisisastaticattr'
  # getter and setter
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hey #{@name}!"
  end
end

greeter = Greeter.new('World')
greeter.greet

puts greeter.name
greeter.name = 'Pesho'
greeter.greet

class MegaGreeter
  attr_accessor :names

  # Create the object
  def initialize(names = 'World')
    @names = names
  end

  # Say hi to everybody
  def say_hi
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('each')
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # Say bye to everybody
  def say_bye
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('join')
      # Join the list elements with commas
      puts "Goodbye #{@names.join(', ')}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end
end

mg = MegaGreeter.new
mg.say_hi
mg.say_bye

# Change name to be "Zeke"
mg.names = 'Zeke'
mg.say_hi
mg.say_bye

# Change the name to an array of names
mg.names = ['Albert', 'Brenda', 'Charles', 'Dave', 'Engelbert']
mg.say_hi
mg.say_bye

# Change to nil
mg.names = nil
mg.say_hi
mg.say_bye

module AnimalBehavior
  def eat
    raise NotImplementedError, 'This method should be implemented'
  end
end

class Animal
  include AnimalBehavior
  def initialize(name)
    @name = name
  end

  def eat
    puts "The #{@name} eats you!"
  end
end

class Dog < Animal
  def initialize(name)
    @name = name
    super
  end
end

d = Dog.new('Dog')
d.eat
