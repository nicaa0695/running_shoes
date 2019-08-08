require 'colorize'
class RunningShoes::CLI
  
  def call 
    list_shoes
    menu
    goodbye
  end
  
  def list_shoes
    puts "Take a look at these awesome running shoes:".colorize(:purple)
    @shoes = RunningShoes::Shoes.all
    @shoes.each.with_index(1) do |shoe, i|
      puts "#{i}. #{shoe.name}".colorize(:blue)
      #puts "#{i}. #{shoe.name} - #{shoe.price} - #{shoe.availability} - #{shoe.description}" 
    end
      
  end
  
  def menu
    puts "Enter the number (1-10) of the shoe you would like more information about, type 'list' to see the shoes again or type 'exit'.".colorize(:orange)
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0 
        the_shoe = @shoes[input.to_i-1]
        puts "#{the_shoe.name} - #{the_shoe.price} - #{the_shoe.availability} - #{the_shoe.description}"
        elsif input == "list"
          list_shoes 
      end
    end 
  end
  def goodbye
    puts "See you soon, during your next shopping spree!".colorize(:yellow)
  end 
end
