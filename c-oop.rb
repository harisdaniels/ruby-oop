class Cat

    # Attribute
    attr_accessor(:name, :age)

    # Constructor in Ruby
    def initialize(init_name, init_age)
        @name = init_name # instance variable
        @age = init_age
    end

    # Behaviors
    def meows
        puts "MEOW! MEOW!"
    end
    def miaow
        puts "MIAOW!"
    end

    # Instance method
    def fetch_ball
        if @age < 1.2
            puts "#{name} will run excitedly to get the ball"
        else
            puts "#{name} will slowly walk towards the ball"
        end
    end

end

cat1 = Cat.new("Mielle", 1.5)
cat1.meows
puts "His name is #{cat1.name} and he is #{cat1.age} years old"

cat2 = Cat.new("Mothel", 1)
cat2.miaow
puts "her name is #{cat2.name} and she is #{cat2.age} years old"

cat1.fetch_ball
cat2.fetch_ball