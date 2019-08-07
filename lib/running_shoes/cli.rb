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
    @shoes.each.with_index(1) do |shoe, i|
      puts "#{i}. #{shoe.name} - #{shoe.price} - #{shoe.availability} - #{the_shoe.desrciption}" 
    end
      
  end
  
  def menu
    puts "Enter the number of the shoe you want more information about or type list to see the shoes again or type exit:"
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0 
        the_shoe = @shoes[input.to_i-1]
        puts "#{the_shoe.name} - #{the_shoe.price} - #{the_shoe.availability} - #{the_shoe.description}"
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