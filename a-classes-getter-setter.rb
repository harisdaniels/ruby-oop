# Class Definition
class Product

    # Constructor
    def initialize(name, price)
        @product_name = name
        @product_price = price
    end 

    # Setter
    def set_name(name)
        # Instance variable starts with @
        @product_name = name
    end

    # Getter
    def get_name
        # Instance variable
        @product_name
    end

    def set_price(price)
        # Instance variable
        @product_price = price
    end

    # Getter
    def get_price
        # Instance variable
        @product_price
    end
end

prod_1 = Product.new("HP laptop", "11.000.000")
prod_name = prod_1.get_name
prod_price = prod_1.get_price

puts "The name of my product is #{prod_name} and the price is #{prod_price}"