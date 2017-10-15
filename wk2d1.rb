require 'rspec'
require 'benchmark'

# passed code submission

array = [1, 6, 3, 10, 5, 3]

def new_max array_of_elements
  max_value = 0
  
  array_of_elements.each do |i|
    if i &gt; max_value
      max_value = i
    end
  end
  
  max_value
end

# pulls the max 
arr = Array.new(1000) { rand 1000 }

puts arr.max

# sorts and pulls last 
arr = [10, 4, 2, 4, 1, 7]

puts arr.sort.last

# sort and pulls last
arr = Array.new(1_000) { rand 1000 }

puts arr.sort.last

# new max = 0 pulls the biggest
arr = Array.new(1_000) { rand 1000 }

new_max = 0

arr.each do |i|
  if i > new_max
    new_max = i
  end
end

puts new_max

# sorts and pulls last
arr = [1, 6, 3, 10, 5, 3]

puts arr.sort.last

# new max = 0 pulls the biggest
arr = [1, 6, 3, 10, 5, 3]

new_max = 0

arr.each do |i|
  if i > new_max
    new_max = i
  end
end

puts new_max

arr = Array.new(100_000) {rand 1000}

def new_max array_of_elements
  max_value = 0
  
  array_of_elements.each do |i|
    if i > max_value
      max_value = i
    end
  end
  
  max_value
end

Benchmark.bm(10) do |x|
  x.report('Each: ') { new_max arr }
  x.report('Sorted: ') { arr.sort.last }
  x.report('Max: ') {arr.max}
end