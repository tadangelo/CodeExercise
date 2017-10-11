require 'rspec'

def array_converter *arrays
  arrays.flatten
end

arr_1 = ['1', '5', '9']
arr_2 = ['10', '2', '7', '10']
arr_3 = ['3', '4', '0']

array_converter = [(arr_1), (arr_2), (arr_3)]
puts array_converter

def array_converter *arrays
  arrays.map(&:inspect).join(', ')
end

arr_1 = ['1', '5', '9']
arr_2 = ['10', '2', '7', '10']
arr_3 = ['3', '4', '0']

array_converter = [(arr_1), (arr_2), (arr_3)]
puts array_converter

def array_converter *arrays
  arrays.flatten.map(&:to_i)
end

arr_1 = ['1', '5', '9']
arr_2 = ['10', '2', '7', '10']
arr_3 = ['3', '4', '0']

puts array_converter arr_1, arr_2, arr_3


