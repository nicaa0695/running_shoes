#CLI Controller/User Interactions
class RunningShoes::CLI
  
  def call 
    list_shoes
    menu
    goodbye
  end
  
  def list_shoes
    
    @shoes = RunningShoes::Shoes.all
  end
  
  def menu
    puts "Enter the number of the shoe you want more information about or type list to see the shoes again or type exit:"
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      case input 
      when "1"
        puts "I'd like more information on shoe 1!"
      when  "2"
        puts "I'd like more information on shoe 2!"
        when "list"
          list_shoes
        else
          puts "Input does not exist, please type list or exit."
      end
    end 
  end
  def goodbye
    puts "See you soon, during your next shopping spree!"
  end 
end