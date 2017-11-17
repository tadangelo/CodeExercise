require 'rspec'

puts "Pick a number...any number..."

n = gets.chomp.to_i

puts "So we're going to give you the choice of computing the sum or product of every number up to and including #{n}.  Would you like to compute the sum or the product?"

    @answer = gets.chomp

    def consecutive_sum(n)
      1.upto(n/2) do |i|
      sum = s
      end
    end

    if @answer == "sum"
      puts consecutive_sum
    elsif @answer == "product"
      puts "#{n}"
    else
      puts "that wasn't an option"
    end













    # Write a program that asks the user for a number n and gives him the possibility to choose between computing the sum and computing the product of 1,…,n.