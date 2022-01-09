# Access Control
# Ruby gives you three levels of protection at instance methods level, which may be public, private, or protected. Ruby does not apply any access control over instance and class variables.

# Public Methods − Public methods can be called by anyone. Methods are public by default except for initialize, which is always private.

# Private Methods − Private methods cannot be accessed, or even viewed from outside the class. Only the class methods can access private members.

# Protected Methods − A protected method can be invoked only by objects of the defining class and its subclasses. Access is kept within the family.

# Following is a simple example to show the syntax of all the three access modifiers −

class Box
    def initialize(width, height)
        @width = width
        @height = height
    end

    # instance method by default it is public
    def calculate_area
        get_width * get_height
    end

    # define private accessor methods
    def get_width
        @width
    end
    def get_height
        @height
    end
    # make them private
    private :get_width
    private :get_height

    # instance method to print area
    def print_area
        @area = calculate_area
        puts "Big box area is : #@area"
    end
    # make it protected
    protected :print_area
end

# Create new Object
box = Box.new(10, 20)

# call instance methods
puts "Area of the box is : #{box.calculate_area}"

# try to call protected or methods
puts box.print_area