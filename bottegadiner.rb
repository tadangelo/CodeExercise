require 'rspec'

def specials
  specials = (random_entree; random_side_1; random_side_2)
end

meal = "Chef's Special"

entire_menu = {
  "Breakfast($5.50)" => { 
    "Choice of 1 entree" => ["pancakes", "eggs", "french toast"],     
    "Choice of 2 sides" => ["hashbrowns", "fruit", "toast"]
  },
  "Lunch($8.00)" => {
    "Choice of 1 entree" => ["chicken", "steak", "fish"],
    "Choice of 2 sides" => ["steamed vegetables", "baked potato", "french fries"]
  },
  "Dinner($12.50)" => {
    "Choice of 1 entree" => ["chicken", "steak", "fish"],
    "Choice of 2 sides" => ["steamed vegetables", "baked potato", "french fries"]
  }
}
  @entree = ["chicken", "steak", "fish", "pancakes", "eggs", "french toast"]
  @side_1 = ["steamed vegetables", "baked potato", "french fries", "hashbrowns", "fruit", "toast"]
  @side_2 = ["steamed vegetables", "baked potato", "french fries", "hashbrowns", "fruit", "toast"]


entire_menu.each do |x|
puts x
end

puts meal
  p random_entree = @entree.sample
  p random_side_1 = @side_1.shuffle.first
  puts random_side_2 = @side_2.sample

puts "Would you like the Chef's Special?"
answer = gets.chomp!
if answer.downcase == 'yes'
  puts "Great Choice! That will be $#{(13.50 * 1.825).round(2)}, I'll be back with your order soon."
elsif answer.downcase =='no'
  puts "What would you like instead?"
end

@response = ["Anything else?", "Is that all?", "Don't forget your sides."]
@price = ["That will be $#{(12.50 * 1.825).round(2)}, which two sides would you like?"]
@total = ["That's a great choice! I'll be back with your order soon."]

answer = gets.chomp!
if answer.downcase == @entree
end

puts random_response = @response.sample
puts @price

answer = gets.chomp!
if answer.downcase == @side_1; @side_2
end

puts @total

# need to end if answer to chef special is yes and need to continue if answer to chef special is no
# need to calculate prices based on menu prices and user choices
# test github update