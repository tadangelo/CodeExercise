require 'rspec'

def palindrome? word
  word.downcase == word.downcase.reverse
end

puts "what is the word?"
word = gets.chomp!
p word

if word.downcase == word.downcase.reverse
  TRUE
else
  FALSE
end





#describe 'Check if a word is a palindrome' do
  #it 'returns true if the word is a palindrome, false if not' do
    #expect(palindrome?('tacocat')).to be(true)
    #expect(palindrome?('Tacocat')).to be(true)
    #expect(palindrome?('baseball')).to be(false)
  #end
#end