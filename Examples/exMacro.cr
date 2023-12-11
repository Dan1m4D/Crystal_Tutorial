macro greeting(name)
  def greet_{{name}}
    puts "Wassup, {{name}}!"
  end
end

greeting people

greet_people
