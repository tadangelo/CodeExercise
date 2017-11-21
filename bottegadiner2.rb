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

@breakfast_menu = "Choice of 1 entree: pancakes, eggs, french toast and a choice of 2 side items: hashbrowns, fruit, toast"
@lunch_menu = "Choice of 1 entree: chicken, steak, fish and a choice of 2 side items: steamed vegetables, baked potato, french fries"

@dinner_menu = "Choice of 1 entree: chicken, steak, fish and a choice of 2 side items: steamed vegetables, baked potato, french fries"

puts "Would you like the Chef's Special?"
answer = gets.chomp!
if answer.downcase == 'yes'
  puts "Great Choice! That will be $#{(13.50 * 1.0825).round(2)}, I'll be back with your order soon."
elsif answer.downcase =='no'
  puts "What menu would you like to order from? Breakfast?, Lunch?, or Dinner?"
    answer2 = gets.chomp!
    if answer2.downcase == "breakfast"
      puts "The breakfast menu is, #{@breakfast_menu}"
    elsif answer2.downcase == "lunch"
      puts "The lunch menu is, #{@lunch_menu}"
    elsif answer2.downcase == "dinner"
      puts "The dinner menu is, #{@dinner_menu}"
    else
      puts "We don't make that here please choose from the menu..."
      entire_menu.each do |x|
        puts x
      end
  end

  if answer2.downcase == "breakfast"
    @price = (5.50 * 1.0825).round(2)
  elsif answer2.downcase == "lunch"
    @price = (8.00 * 1.0825).round(2)
  elsif answer2.downcase == "dinner"
    @price = (12.50 * 1.0825).round(2)
  else
    @price = (10.50 * 1.0825).round(2)
  end


  puts "What entree would you like?"

  @response = ["Anything else?", "Is that all?", "Don't forget your sides."]
  @sides = ["which two sides would you like?"]
  @total = ["That's a great choice! I'll be back with your order soon."]

  @answer3 = gets.chomp!
  if answer.downcase == @entree
  end

  puts random_response = @response.sample
  puts @sides

  @answer4 = gets.chomp!
  if answer.downcase == @side_1; @side_2
  end

  puts "So you would like #{@answer3} and #{@answer4}.  Sounds Great!"
  puts "Your total is $#{@price}"
  puts @total
end