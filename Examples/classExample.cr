class Animal
  # Public instance variable
  @name : String

  # Public constructor
  def initialize(name : String)
    @name = name
  end

  # Public method
  def make_sound : String
    "Some generic animal sound"
  end

  # Protected method
  protected def protected_method : String
    "This method is protected."
  end

  # Private method
  private def private_method : String
    "This method is private."
  end
end

class Cat < Animal
  def initialize(name : String)
    super(name)
  end

  def make_sound : String
    "Meow!"
  end

  # Accessing protected method from the base class
  def access_protected_method : String
    protected_method
  end

  # Attempting to access private method from the base class
  # This will result in a compilation error
  # def access_private_method : String
  #   private_method
  # end
end

class Dog < Animal
  def initialize(name : String)
    super(name)
  end

  def make_sound : String
    "Woof!"
  end

  # Accessing protected method from the base class
  def access_protected_method : String
    protected_method
  end

  # Attempting to access private method from the base class
  # This will result in a compilation error
  # def access_private_method : String
  #   private_method
  # end
end

# Creating instances of Cat and Dog
cat = Cat.new("Whiskers")
dog = Dog.new("Buddy")

# Calling public methods
puts cat.make_sound  # Output: Meow!
puts dog.make_sound  # Output: Woof!

# Calling protected method through a public method
puts cat.access_protected_method  # Output: This method is protected.
puts dog.access_protected_method  # Output: This method is protected.

# Attempting to call private method (will result in a compilation error)
# puts cat.access_private_method
# puts dog.access_private_method
