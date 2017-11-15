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

  puts "welcome to the casino"
  puts "you have 100 tokens"
  @balance = 100


# begging of the loop
  casinoloop = true

  while casinoloop
    puts "what game would you like to play?"
    puts "you have a balance of #{@balance} " 
    puts "we have flip, roulette, and slots"
    answer = gets.chomp!

    if answer == "flip"
      puts "you have selected flip"
#possible refactor
      puts "Welcome to Flip-A-Coin!"
      puts "You have #{@balance}"
      puts "How much would you like to bet?"
      @answer = gets.chomp.to_i
  
      randomNum = rand(2)
      puts randomNum

      if randomNum == 1
        puts "you flipped tails you lose"
        @balance = @balance - @answer
        puts "your new balance is #{@balance}"
      else
        puts "you flipped heads you win"
        @balance = @balance + @answer
        puts "your new balance is #{@balance}"
        
        if @balance <= 0
          puts "You lost all your money!"
          casinoloop = false
        end
      end

    elsif answer == "slots"
      puts "you have selected slots"
    
      val = rand(10)
      puts val

      if val == 7
        puts "you won cherries you won 3"
        @balance = @balance + 3
        puts "you have a balance of #{@balance} " 
      elsif val == 8
        puts "you won triple 7's you won 4"
        @balance = @balance + 4
        puts "you have a balance of #{@balance} "
      elsif val == 9
        puts "you won plums you won 5"
        @balance = @balance + 5
        puts "you have a balance of #{@balance} "
      elsif val == 0
        puts "you won the highest! you won 8"
        @balance = @balance + 8
        puts "you have a balance of #{@balance} "
      else
        puts "you lost your coin sorry, -1"
        @balance = @balance - 1
        puts "you have a balance of #{@balance} "

        if @balance <= 0
          puts "You lost all your money!"
          casinoloop = false
        end
      end

      elsif answer == "roulette"
        puts "you have selected roulette"
        puts "Pick a number 1-100."
        answer_roulette = gets.chomp.to_i

        puts "Ok let's spin"

        rand_num = rand(100)
        puts rand_num

      if @rand_num == answer_roulette
        puts "You won #{answer_roulette}"
        @balance = @balance + answer_roulette
        puts "your new balance is #{@balance}"
      else
        puts "You lost #{answer_roulette}"
        @balance = @balance - answer_roulette
        puts "your new balance is #{@balance}"
        if @balance <= 0
          puts "You lost all your money!"
          casinoloop = false
        end
      end

    else
      puts "We don't have that game.  Have a great day"
      casinoloop = false
    end
  end
end