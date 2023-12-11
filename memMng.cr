# Allocate memory for an Int32: 4 bytes
ptr = Pointer(Int32).malloc(1_u64)
puts ptr.value # => 0

# Allocate memory for 10 Int32: 40 bytes
ptr = Pointer(Int32).malloc(10_u64)

puts ptr

ptr[0] = 0 # => 0
# ...
ptr[9] = 9 # =>


puts ptr[0]

puts ptr[9] 

