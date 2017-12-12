puts "Our theme is Programming BootCamp"
@starting_sentence = ["Bottega Tech", "Bottega Rocks", "Hello World", "Ruby on Rails", "Software Programming", "Andrew Wold", "Brayden Green", "Jordan Hudgens", "Silicone Slopes", "Portfolio App"]

starting_sentence = @starting_sentence.sample

sentence_array = starting_sentence.split("").map(&:downcase)
count = sentence_array - [" "]
final_sentence = starting_sentence.gsub!(/[a-zA-Z]/, "_")

while sentence_array.count("") < count.count
  puts "Guess a letter"
  guess = gets.downcase.chomp!
  if sentence_array.include?(guess)
    letter_index = sentence_array.find_index(guess)
    sentence_array[letter_index] = ""
    final_sentence[letter_index] = guess
    puts "Correct! The sentence is now: #{final_sentence}"
  else
    puts "Sorry, that letter isn't the right answer, please try again."
  end
end