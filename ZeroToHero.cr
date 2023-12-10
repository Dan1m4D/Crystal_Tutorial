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


## Control Flow

# Nil

p! "Crystal is awesome".index("aw"),
  "Crystal is awesome".index("xxxx")

# Bool

p! true, false


a = true
b = false

p! a && b, # conjunction (AND)
  a || b,  # disjunction (OR)
  !a,      # negation (NOT)
  a != b,  # inequivalence (XOR)
  a == b   # equivalence


a = "foo"
b = nil

p! a && b, # conjunction (AND)
  a || b,  # disjunction (OR)
  !a,      # negation (NOT)
  a != b,  # inequivalence (XOR)
  a == b   # equivalence


# Conditionals 

message = "Hello World"

if message.starts_with?("Hello")
  puts "Hello to you, too!"
end



if message.starts_with?("Hello") || message.starts_with?("Hi")
  puts "Hey there!"
end



str = "Crystal is awesome"
index = str.index("aw")

if !index.nil?
  puts str
  puts "#{" " * index}^^"
end



message = "Hello Crystal"

if message.starts_with?("Hello")
  puts "Hello to you, too!"
elsif message.includes?("Crystal")
  puts "Shine bright like a crystal."
end

if message.includes?("Crystal")
  puts "Shine bright like a crystal."
elsif message.starts_with?("Hello")
  puts "Hello to you, too!"
end



# Loop

counter = 0

while counter < 10
  counter += 1

  puts "Counter: #{counter}"
end


counter = 0

until counter >= 10
  counter += 1

  puts "Counter: #{counter}"
end


while true
  puts "Counter: #{counter}"
end


while true
  puts "Hi, what's your name? (hit Enter when done)"

  # `gets` returns input from the console
  name = gets

  puts "Nice to meet you, #{name}."
  puts "Now, let's repeat."
end


counter = 0

while counter < 10
  counter += 1

  if counter % 3 == 0
    next
  end

  puts "Counter: #{counter}"
end


counter = 0

while true
  counter += 1

  puts "Counter: #{counter}"

  if counter >= 10
    break
  end
end

puts "done"


## Methods

def say_hello(recipient)
  puts "Hello #{recipient}!"
end

say_hello "World"
say_hello "Crystal"


def say_hello(recipient = "World")
  puts "Hello #{recipient}!"
end

say_hello
say_hello "Crystal"


# Type restrictions

def say_hello(recipient : String)
  puts "Hello #{recipient}!"
end

say_hello "World"
say_hello "Crystal"


# Overloading

# This methods greets *recipient*.
def say_hello(recipient : String)
  puts "Hello #{recipient}!"
end

# This method greets *times* times.
def say_hello(times : Int32)
  puts "Hello " * times
end

say_hello "World"
say_hello 3

# Returning value

def adds_2(n : Int32)
  n + 2
end

puts adds_2 40


def build_even_number(n : Int32)
  return n if n.even?

  n * 2
end

puts build_even_number 7
puts build_even_number 28

