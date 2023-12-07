class Square
    #  Creates a new "Square" instance
    def initialize(@colour = "Green", @length = 1)
        raise "Length must be larger than 0!" if @length <= 0
    end

    #  Returns the current colour
    def getColour
        @colour
    end

    # Returns the current length
    def getLength
        @length
    end

    # Setter for the length variable
    def length=(new_length)
        raise "Length must be larger than 0!" if new_length <= 0
        @length = new_length
    end

    #  Prints the object's atributes to the COUT 
    def printOut
        puts "I'm a #{@colour} square with length #{@length}"
    end
end

x = 2023
puts "This is a prototype for a simple object based Crystal program!"
puts "Var x => #{x}"
puts ""

# Create a new Square instance with default values
default_square = Square.new
default_square.printOut

# Change the length using the setter
default_square.length = 5
default_square.printOut

# Create a new Square instance with custom values
custom_square = Square.new("Blue", 3)
custom_square.printOut

