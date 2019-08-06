class RunningShoes::Shoes
  
  def self.all 
    # I should return a bunch of instances of Shoes 
    puts "Take a look at these awesome running shoes:"
    puts <<-DOC
      1. Duramo 9 Shoes - $65 - In stock!
      2. Ultraboost 19 Shoes - $180 - In stock!
    DOC
    shoe_1 = self.new
    shoe_1.name = "Duramo 9 Shoes"
    shoe_1.price = "$65"
    shoe_1.availability = true 
    shoe_1.url = "https://www.adidas.com/us/women-running-shoes"
    
    shoe_2 = self.new
    shoe_2.name = "Duramo 9 Shoes"
    shoe_2.price = "$65"
    shoe_2.availability = true 
    shoe_2.url = "https://www.adidas.com/us/women-running-shoes"
  end
  
end 