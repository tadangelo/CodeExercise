class Rps

  @p1 = ["scissor", "paper", "rock", "spock", "lizard"]
  @p2 = ["rock", "paper", "scissor", "spock", "lizard"]

  puts "Let's Play Rock, Paper, Scissor, Lizard, Spock...GO!"
  @p1 = gets.chomp.downcase
  if @p1.downcase == ["scissor", "paper", "rock", "spock", "lizard"]
  end

puts random_response = @p2.sample

end

my_game = Rps.new

  # if @p1 == "scissor" while @p2 == "paper"
  #   p "Player 1 won!";
  # elsif @p1 == "paper" while @p2 == "rock"
  #   p "Player 1 won!";
  # elsif @p1 == "spock" while @p2 == ["scissor", "paper", "rock", "lizard"]
  #   p "Player 1 won!";
  # else
  #   p "Player 2 won!"
  # end


