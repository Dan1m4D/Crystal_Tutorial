## output
puts "Hello World!"

## variables

message = "Hello Penny!"

puts message
puts message
puts message

message = "Hello Penny!"

p! typeof(message)



message = "Hello Penny!"

p! message, typeof(message)

message = 73

p! message, typeof(message)



## Math

# Numeric

p! 1, typeof(1)
p! 1.0, typeof(1.0)
p! 100_000, typeof(100_000)
p! 100_000.0, typeof(100_000.0)


# Arithmetic


p! 1 == 1,
  1 == 2,
  1.0 == 1,
  -2000.0 == -2000


p! 2 > 1,
  1 >= 1,
  1 < 2,
  1 <= 2


p! 1 + 1, # addition
  1 - 1,  # subtraction
  2 * 3,  # multiplication
  2 ** 4, # exponentiation
  2 / 3,  # division
  2 // 3, # floor division
  3 % 2,  # modulus
  -1      # negation (unary)


# Math methods


p! Math.cos(1),     # cosine
  Math.sin(1),      # sine
  Math.tan(1),      # tangent
  Math.log(42),     # natural logarithm
  Math.log10(312),  # logarithm to base 10
  Math.log(312, 5), # logarithm to base 5
  Math.sqrt(9)      # square root


# Math constants

p! Math::E,  # Euler's number
  Math::TAU, # Full circle constant (2 * PI)
  Math::PI   # Archimedes' constant (TAU / 2)



## String

name = "Crystal"
puts "Hello #{name}"

name = 6
puts "Hello #{name}!"

# Escaping

puts "I say: \"Hello World!\""


# Unicode 

puts "Hello 🌐"


puts "Hello \u{1F310}"


# Transformation 

message = "Hello World! Greetings from Crystal."

puts "normal: #{message}"
puts "upcased: #{message.upcase}"
puts "downcased: #{message.downcase}"
puts "camelcased: #{message.camelcase}"
puts "capitalized: #{message.capitalize}"
puts "reversed: #{message.reverse}"
puts "titleized: #{message.titleize}"
puts "underscored: #{message.underscore}"


# Equality and Comparison

message = "Hello World!"

p! message == "Hello World",
  message == "Hello Crystal",
  message == "hello world",
  message.compare("hello world", case_insensitive: false),
  message.compare("hello world", case_insensitive: true)


# Indexing Substrings

p! "Crystal is awesome".index("Crystal"),
  "Crystal is awesome".index("s"),
  "Crystal is awesome".index("aw")

message = "Crystal is awesome"

p! message.index("s"),
  message.index("s", offset: 4),
  message.index("s", offset: 10)


message = "Crystal is awesome"

p! message.rindex("s"),
  message.rindex("s", 13),
  message.rindex("s", 8)|


a = "Crystal is awesome".index("aw")
p! a, typeof(a)
b = "Crystal is awesome".index("meh")
p! b, typeof(b)


# Extracting Substrings

message = "Hello World!"

p! message[6, 5]

message = "Hello World!"

p! message[6, message.size - 6 - 1]



