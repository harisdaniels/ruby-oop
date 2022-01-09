# Class Constants
# You can define a constant inside a class by assigning a direct numeric or string value to a variable, 
# which is defined without using either @ or @@. 
# By convention, we keep constant names in upper case.

# Once a constant is defined, 
# you cannot change its value but you can access a constant directly inside a class much like a variable 
# but if you want to access a constant outside of the class then you would have to use;
# classname::constant as shown in the below example.

# Class constants are inherited and can be overridden like instance methods.
class Box
    BOX_COMPANY = "TATA Inc"
    BOX_WEIGHT = 10

    # constructor method
    def initialize(width, height)
        @width, @height = width, height
    end

    #instance method
    def calculate
        @width * @height
    end
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.calculate
puts "Area of the box is : #{a}"
puts Box::BOX_COMPANY
puts "Box weight is: #{Box::BOX_WEIGHT}"