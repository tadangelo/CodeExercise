arr = [ 1, 2, 3, 4, 5, 6, 7]

(arr.count / 2).times do |i|
  arr[i], arr[-(i + 1)] = arr[-(i + 1)], arr[i]
end


puts arr