my_array = Array.new

p my_array.class

my_array = []

p my_array.class

my_array = Array.new(3)

p my_array

my_array = Array.new(3, true)

p my_array

my_array = Array.new(4) { Hash.new }
p my_array

my_empty_table = Array.new(3) { Array.new(3) }
p my_empty_table

arr = [1, 2, 3, 4, 5, 6]

p arr[2]
p arr[100]
p arr[-3]
p arr[2, 3]
p arr[1..4]
p arr[1..-3]

arr = [ 1, 2] << "c" << "d" << [ 3, 4 ]
p arr

my_empty_array = []
my_empty_array << "Append"

p my_empty_array

my_empty_array = []
my_empty_array << "Append"
my_empty_array << "all"
my_empty_array << "the"
my_empty_array << "words"

p my_empty_array


# array = [1, 2, 3, 4, 5]
# for i in array
#   puts i
# end

# array = [1, 2, 3, 4, 5]

# array.each do |i|
#   puts i
# end

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def array_copy(source)
  destination = []
  source.each do |number|
    destination << number if number < 5
  end

  return destination
end

p array_copy(my_array)