require 'rspec'

str = "dog lazy the over jumped fox brown quick The"

def sentence_reverser str
  str.split.reverse.join(' ')
end

p sentence_reverser(str)

def sentence_reverser str
  str.split.reverse.join(' ')
end

puts sentence_reverser "dog lazy the over jumped fox brown quick The"