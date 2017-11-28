arr = [1, 2, 3, 4, 5, 6, 7]

def array_reverser arr
  arr.reverse
end

p array_reverser(arr)

arr = [ 1, 2, 3, 4, 5, 6, 7]

def reverse a
  a.sort { |x,y| y <=> x}
end

puts reverse arr