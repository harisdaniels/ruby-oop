class Cat

    # Getter and setter in 1 line (Read and Write permissions)
    attr_accessor(:name, :age)
    # attr_reader(:name, :age) # Getter
    # attr_writer(:name, :age) # Setter

    # Constructor in Ruby
    def initialize(init_name, init_age)
        @name = init_name
        @age = init_age
    end

    # Attribute
    # @name
    # @age

    # Behaviors
    def meows
        puts "MEOW! MEOW!"
    end
    def miaow
        puts "MIAOW!"
    end

    # getter (Read permission for @name)
    # def get_name
    #     return @name
    # end

    # 1. setter (Write permission for @name)
    # def set_name(name_i_set)
    #     @name = name_i_set
    # end

    # 2. setter (Write permission for @name)
    # def set_name=(name_i_set)
    #     @name = name_i_set
    # end

end

cat1 = Cat.new("Mielle", 1)
cat1.meows
# cat1.set_name("Mielle")
# cat1.name = "Mielle"
puts cat1.age