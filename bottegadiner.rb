require 'rspec'

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


entire_menu.each do |x|
puts x
end

puts "Would you like the Chef's Special?"
answer = gets.chomp
if answer == 'yes'
  puts "Great Choice!"
elsif answer =='no'
  puts "What would you like instead?"
end


  @entree = ["chicken", "steak", "fish"]
  @side_1 = ["steamed vegetables", "baked potato", "french fries"]
  @side_2 = ["steamed vegetables", "baked potato", "french fries"]
   
  p random_entree = @entree.sample
  
  p random_side_1 = @side_1.shuffle.first
  
  puts random_side_2 = @side_2.sample
  

  
