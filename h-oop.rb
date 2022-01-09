# Inheritence
# Inheritance allows us to define a class in terms of another class, which makes it easier to create and maintain an application.

# When creating a class, instead of writing completely new data members and member functions, the programmer can designate that the new class should inherit the members of an existing class.
# This existing class is called the BASE CLASS or SUPERCLASS, and the new class is referred to as the DERIVED CLASS or SUB-CLASS.

# Ruby also supports the concept of subclassing, i.e., inheritance and following example explains the concept.

# Define a class
class Box
    def initialize(width, height)
        @width = width
        @height = height
    end
    def calculate_area
        @width * @height
    end
end

# Define a Sub-Class "<" === "extends" in JS
class BigBox < Box
    def print_area
        @area = calculate_area
        puts "Big box area is : #@area"
    end
end
class SmallBox < Box
    def print_area
        @area = calculate_area
        puts "Small box area is : #@area"
    end
end

# create an object
big_box = BigBox.new(100, 200)
small_box = SmallBox.new(5, 10)

# print
big_box.print_area
small_box.print_area