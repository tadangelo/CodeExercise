class CASINO


# create a user/wallet with 100 tokens
# give user game choice
# play a game
# add or subtract based on winnings
# report balance to the user
# ask user game choice
# continue loop
## game object
## wallet object

  puts "welcome to the ADT Casino"
  @balance = 100


# begging of the loop
  casinoloop = true

  while casinoloop
    puts "what game would you like to play?"
    puts "you have a balance of #{@balance} tokens" 
    puts "we have flip, roulette, and slots"
    answer = gets.chomp!

    if answer == "flip"
      puts "you have selected flip"
#possible refactor
      puts "Welcome to Flip-A-Coin!"
      puts "You have #{@balance} tokens"
      puts "How much would you like to bet?"
      @answer = gets.chomp.to_i
  
      randomNum = rand(2)

      if randomNum == 1
        puts "you flipped tails you lose"
        @balance = @balance - @answer
        puts "your new balance is #{@balance} tokens"
      else
        puts "you flipped heads you win"
        @balance = @balance + @answer
        puts "your new balance is #{@balance} tokens"
      end
        
      if @balance <= 0
        puts "You lost all your money!"
        casinoloop = false
      end

    elsif answer == "slots"
      puts "you have selected slots"
    
      val = rand(10)

      if val == 7
        puts "you won cherries you won 3 tokens"
        @balance = @balance + 3
        puts "you have a balance of #{@balance} tokens" 
      elsif val == 8
        puts "you won triple 7's you won 4 tokens"
        @balance = @balance + 4
        puts "you have a balance of #{@balance} tokens"
      elsif val == 9
        puts "you won plums you won 5 tokens"
        @balance = @balance + 5
        puts "you have a balance of #{@balance} tokens"
      elsif val == 0
        puts "You hit the JACKPOT! you won 8 tokens"
        @balance = @balance + 8
        puts "you have a balance of #{@balance} tokens"
      else
        puts "you lost your coin sorry"

        @balance = @balance - 1
        puts "you have a balance of #{@balance} tokens"

        if @balance <= 0
          puts "You lost all your money!"
          casinoloop = false
        end
      end

      elsif answer == "roulette"
        puts "you have selected roulette"
        puts "Pick a number 1-36."
        answer_roulette = gets.chomp.to_i

        puts "Ok let's spin"

        rand_num = rand(36)
        puts "The wheel landed on #{rand_num}"

      if @rand_num == answer_roulette
        puts "You won #{answer_roulette} tokens"
        @balance = @balance + answer_roulette
        puts "your new balance is #{@balance} tokens"
      else
        puts "You lost #{answer_roulette} tokens"
        @balance = @balance - answer_roulette
        puts "your new balance is #{@balance} tokens"
        if @balance <= 0
          puts "You lost all your tokens!"
          casinoloop = false
        end
      end

    else
      puts "Sorry, we don't have that game.  Have a great day"
      casinoloop = false
    end
  end
end