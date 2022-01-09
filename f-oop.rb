# Reference: https://www.tutorialspoint.com/ruby/ruby_object_oriented.htm

class Box
    # The class Methods and Variables
    # The class variables is a variable, which is shared between all instances of a class. 
    # In other words, there is one instance of the variable and it is accessed by object instances. 
    # Class variables are prefixed with two @ characters (@@). 
    # A class variable must be initialized within the class definition as shown below.
    # Initialize our class variables
    @@count = 0
    def initialize(width, height)
        # assign instance variables
        @width = width
        @height = height

        # Will increment the number if we create new Object
        @@count += 1
    end

    # A class method is defined using def self.methodname(), 
    # which ends with end delimiter and would be called using the class name as classname.methodname as shown in the following example −
    def self.count_total_of_the_box
        @@count
    end

    # The to_s Method
    # Any class you define should have a to_s instance method to return a string representation of the object. 
    # Following is a simple example to represent a Box object in terms of width and height

    # define to_s method
    def to_s
        "(w:#@width,h:#@height)"  # string formatting of the object.
    end

end

# Define Ruby Objects
box1 = Box.new(10, 20)
box2 = Box.new(10, 20)

# There are 2 Object above
# call class method to print box count
puts "The total number of the box is: #{Box.count_total_of_the_box}"

# to_s method will be called in reference of string automatically.
puts "String representation of box is : #{box1} and #{box2}"