#CLI Controller/User Interactions
class RunningShoes::CLI
  
  def call 
    list_shoes
    menu
    goodbye
  end
  
  def list_shoes
    puts "Take a look at these awesome running shoes:"
    @shoes = RunningShoes::Shoes.all
  end
  
  def menu
    puts "Enter the number of the shoe you want more information about or type list to see the shoes again or type exit:"
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0 
        puts @shoes[input.to_i-1]
        elsif input == "list"
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