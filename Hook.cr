class Parent
  macro inherited
    def lineage
      "{{@type.name.id}} < Parent"
    end
  end
end

class ImChild < Parent
end

puts ImChild.new.lineage # => "Child < Parent"
