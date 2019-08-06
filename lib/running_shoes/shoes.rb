class RunningShoes::Shoes
  
  def self.all 
    # I should return a bunch of instances of Shoes 
    puts "Take a look at these awesome running shoes:"
    puts <<-DOC
      1. Duramo 9 Shoes - $65 - In stock!
      2. Ultraboost 19 Shoes - $180 - In stock!
    DOC
  end
  
end 