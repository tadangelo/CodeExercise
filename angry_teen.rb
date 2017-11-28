# puts 'What would you like to say to Bob today?'
# r = gets.chomp!

# if r.split(//).last == '?'
#   puts 'Sure'
#   elsif r == ''
#     puts 'Fine. Be that way!'
#   elsif r == r.upcase
#     puts 'Whoa, chill out!'
#   else
#     puts 'Whatever'
# end
 
puts "Please try and speak with Bob...say anything you would like."

response = gets.chomp!
if response.empty?
  puts "Fine. Be that way."

  elsif response == response.upcase
  puts "Whoa, Chill Out!"

  elsif response.include? "?"
  puts "Um Sure"

  else
  puts "Whatever"
end