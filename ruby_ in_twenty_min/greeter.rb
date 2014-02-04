# Ruby in Twenty Minutes - https://www.ruby-lang.org/ru/documentation/quickstart/

class Greeter
  def initialize(name = "World")
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end

  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end

g = Greeter.new("Pat")
g.say_hi
g.say_bye()

puts Greeter.instance_methods.to_s

puts Greeter.instance_methods(false).to_s

puts g.respond_to?("name")

class Greeter
  attr_accessor :name
end

puts g.respond_to?("name")

g.name="Betty"
puts g.name
puts g.name()
puts g.say_hi