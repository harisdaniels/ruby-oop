# Freezing Objects
# Sometimes, we want to prevent an object from being changed. 
# The freeze method in Object allows us to do this, effectively turning an object into a constant. 
# Any object can be frozen by invoking Object.freeze. 
# A frozen object may not be modified: you can't change its instance variables.

class Box
    def initialize(width,height)
        @width, @height = width, height
    end

    # accessor methods (Getter)
    def get_width
        @width
    end
    def get_height
        @height
    end

    # setter methods
    def set_width=(width)
        @width = width
    end
    def set_height=(height)
        @height = height
    end
end

# create an object
box = Box.new(10, 20)

# let us freez this object
box.freeze
if( box.frozen? )
   puts "Box object is frozen object"
else
   puts "Box object is normal object"
end

# now try using setter methods
box.set_width = 30
box.set_height = 50

# use accessor methods
x = box.get_width
y = box.get_height

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"