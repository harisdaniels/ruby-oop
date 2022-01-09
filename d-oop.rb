class Cat

    # Class Variables
    @@total_number_of_cats = 0

    attr_accessor(:name, :age)

    def initialize(init_name, init_age)
        @name = init_name
        @age = init_age

        # increment total of the Cat
        @@total_number_of_cats += 1
    end

    # Class method
    # self refers to class of Cat
    def self.get_total_number
        @@total_number_of_cats
    end

    def meows
        puts "MEOW! MEOW!"
    end
    def miaow
        puts "MIAOW!"
    end

    def eat_chicken
        if @age < 1.2
            puts "#{name} will run excitedly to get the chicken"
        else
            puts "#{name} will slowly walk towards the chicken"
        end
    end

end