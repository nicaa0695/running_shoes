require 'colorize'
class RunningShoes::CLI
  
  def call 
    list_shoes
    menu
    goodbye
  end
  
  def list_shoes
    puts "Take a look at these awesome running shoes:".colorize(:yellow).underline
    @shoes = RunningShoes::Shoes.all
    @shoes.each.with_index(1) do |shoe, i|
      puts "#{i}. #{shoe.name}".colorize(:cyan).bold
      #puts "#{i}. #{shoe.name} - #{shoe.price} - #{shoe.availability} - #{shoe.description}" 
    end
      
  end
  
  def menu
    puts "Enter the number (1-10) of the shoe you would like more information about, type 'list' to see the shoes again or type 'exit'.".colorize(:green).underline
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0 
        the_shoe = @shoes[input.to_i-1]
        puts "#{the_shoe.name.colorize(:white).bold} - #{the_shoe.price.colorize(:yellow).underline} - #{the_shoe.availability.colorize(:green)} - #{the_shoe.description.colorize(:light_blue)}"
        elsif input == "list"
          list_shoes 
      end
    end 
  end
  def goodbye
    puts "See you soon, during your next shopping spree!".colorize(:red).bold
  end 
end
