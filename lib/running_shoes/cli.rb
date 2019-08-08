require 'colorize'
class RunningShoes::CLI
  
  def call 
    list_shoes
    menu
    goodbye
  end
  
  def list_shoes
    puts "Take a look at these awesome running shoes:".colorize(:cyan).underline
    RunningShoes::Shoes.all.each.with_index(1) do |shoe, i|
      puts "#{i}.  #{shoe.name}".gsub(/\s+/,"").colorize(:white).bold
    end
      
  end
  
  def menu
    puts "Enter the number of the shoe you would like more information about, type 'list' to see the shoes again or type 'exit'.".colorize(:light_blue).underline
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0 
        the_shoe = RunningShoes::Shoes.all[input.to_i-1]
        the_shoe.scrape unless the_shoe.scraped
        puts "#{the_shoe.name.strip.colorize(:white).bold} - #{the_shoe.price.colorize(:white).underline} - #{the_shoe.availability.colorize(:green)} - #{the_shoe.description.colorize(:light_blue)}"
        elsif input == "list"
          list_shoes 
      end
    end 
  end
  def goodbye
    puts "See you soon, during your next shopping spree!".colorize(:yellow).bold
  end 
end
