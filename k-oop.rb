# Operator Overloading
# We'd like the + operator to perform vector addition of two Box objects using +, the * operator to multiply a Box width and height by a scalar, and the unary - operator to do negate the width and height of the Box. 
# Here is a version of the Box class with mathematical operators defined −

class Box

    def initialize(width, height)
        @width, @height = width, height
    end

    # Define + to do vector addition
    def +(add)
        Box.new(@width + add.width, @height + add.height)
    end

    def -(substract)
        Box.new(@width - substract.width, @height - substract.width)
    end

    def *(multiple)
        Box.new(@width * multiple.width, @height * multiple.height)
    end

    def /(divide)
        Box.new(@width / divide.width, @height / divide.height)
    end

    def to_s
        return "(#{@width}, #{@height})"
    end
end

p1 = Box.new(2, 3)
p2 = Box.new(4, 5)
puts p1 * p2