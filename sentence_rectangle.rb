def rectangle(sentence)
  puts sentence.split
end

rectangle("hello world")
rectangle("How is it going?  Hope you are doing well!")

def frame(height, width, outside_letter, sentence)
  1.upto(height) do |row|
    if row == 1
      puts outside_letter * width
    elsif row == height
      puts outside_letter * width
    else
      middle = sentence * (width - 9)
      puts "#{outside_letter}#{middle}#{outside_letter}"
    end
  end
end
sentence = "How is it going?  Hope you are doing well!"
puts frame(3, 13, '*', sentence.split)

def boxGreeting(str)
  words = str.split(/\W+/)
  x = words.max_by(&:length).length
  y = x + 4
  puts "*" * y
end

str = "How is it going?  Hope you are doing well!"

boxGreeting(str)