# Create Object Using Allocate
# There may be a situation when you want to create an object without calling its constructor initialize 
# i.e. using new method, in such case you can call "allocate", 
# which will create an uninitialized object for you as in the following example

class Box
    attr_accessor :width, :height

    def initialize(width, height)
        @width, @height = width, height
    end

    def calculate
        @width * @height
    end
end

# create an object using new
box1 = Box.new(10, 20)

# create another object using allocate
box2 = Box.allocate

# call instance method using box1
a = box1.calculate
puts "Area of the box is : #{a}"

# call instance method using box2
a = box2.calculate
puts "Area of the box is : #{a}"