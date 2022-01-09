# Methods Overriding
# Though you can add new functionality in a derived class, but sometimes you would like to change the behavior of already defined method in a parent class. 
# You can do so simply by keeping the method name same and overriding the functionality of the method as shown below in the example

class Box
    def initialize(width, height)
        @width = width
        @height = height
    end

    def calculate_area
        @width * @height
    end
end

class BigBox < Box
    def calculate_area
        @area = @width * @height
        puts "Big box area is : #@area"
    end
end

# create an object
box = BigBox.new(10, 20)

# print the area using overriden method.
box.calculate_area