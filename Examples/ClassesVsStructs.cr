require "benchmark"

class Person
 getter name : String
 getter age : Int32

 def initialize(@name : String, @age : Int32)
 end

 def greet
 "Hello, my name is #{@name} and I am #{@age} years old."
 end
end

struct Student
 getter name : String
 getter age : Int32
 getter grade : Int32

 def initialize(@name : String, @age : Int32, @grade : Int32)
 end

 def greet
 "Hello, my name is #{@name} and I am #{@age} years old."
 end

 def study
 "I am studying hard to pass my exams."
 end
end

puts "Test : 1000 instances  "

Benchmark.ips do |x|
 x.report("class") { Array.new(1000) { Person.new("Alice", 25) } }
 x.report("struct") { Array.new(1000) { Student.new("Bob", 20, 90) } }
end

p = Person.new("Dani", 20)

s = Student.new("Branches", 20,18)

puts "Test : Method acessibility"

Benchmark.ips do |x|
 x.report("class") { p.greet() }
 x.report("struct") { s.greet() }
end
