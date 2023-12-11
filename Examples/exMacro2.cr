macro define_class(module_name, class_name, method, content)
  module {{module_name}}
    class {{class_name}}
      def initialize(@name : String)
      end

      def {{method}}
        {{content}} + @name
      end
    end
  end
end

# This generates:
#     module Foo
#       class Bar
#         def initialize(@name : String)
#         end
#
#         def say
#           "hi " + @name
#         end
#       end
#     end
define_class Foo, Bar, say, "hi "

p Foo::Bar.new("John").say # => "hi John"
