#CLI Controller/User Interactions
class RunningShoes::CLI
  
  def call 
    list_shoes
    menu
  end
  
  def list_shoes
    puts "Take a look at these awesome running shoes:"
    puts <<-DOC
      1. Duramo 9 Shoes - $65 - In stock!
      2. Ultraboost 19 Shoes - $180 - In stock!
    DOC
  end
  
  def menu
    puts "Enter the number of the shoe you want more information about:"
  end
end