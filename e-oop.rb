# Reference: https://www.tutorialspoint.com/ruby/ruby_object_oriented.htm

class Box
    # The initialize method === Constructor
    def initialize(width, height)
        # Instance variables @width === this.width in JS
        # assign instance variables
        @width = width
        @height = height
    end

    # The accessor & setter Methods
    # To make the variables available from outside the class, 
    # they must be defined within accessor methods

    # accessor methods (Getter)
    def get_width
        @width
    end
    def get_height
        @height
    end

    # setter methods
    def set_width=(width_value)
        @width = width_value
    end
    def set_height=(height_value)
        @height = height_value
    end

    # Instance Method
    # The instance methods are also defined in the same way as we define any other method using def keyword and they can be used using a class instance only as shown below. 
    # Their functionality is not limited to access the instance variables, but also they can do a lot more as per your requirement.
    def calculate_area
        @width * @height
    end

end

# Define Ruby Objects
box1 = Box.new(10, 20)
puts "Width of the box is : #{box1.get_width} and Height of the box is : #{box1.get_height}"

box2 = Box.new(10, 20)
# Use Setter
box2.set_width = 30
box2.set_height = 50
puts "Width of the box is : #{box2.get_width} and Height of the box is : #{box2.get_height}"

# call instance methods
puts "Area of the box1 is : #{box1.calculate_area}"
puts "Area of the box2 is : #{box2.calculate_area}"