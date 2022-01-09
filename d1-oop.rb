require_relative "C:/Dev/Ruby/ruby-oop/d-oop.rb"

cat1 = Cat.new("Mielle", 1.5)
puts "His name is #{cat1.name} and he is #{cat1.age} years old"

cat2 = Cat.new("Mothel", 1)
puts "Her name is #{cat2.name} and she is #{cat2.age} years old"

cat3 = Cat.new("Bielle", 1.5)
puts "His name is #{cat3.name} and he is #{cat3.age} years old"

cat1.eat_chicken
cat2.eat_chicken
cat3.eat_chicken

# Call class variable - class method
puts "The total number of the Cats: #{Cat.get_total_number}"
