class RunningShoes::Shoes
  attr_accessor :name, :price, :availability, :url
  def self.all 
    # I should return a bunch of instances of Shoes 
    puts "Take a look at these awesome running shoes:"
   
    shoe_1 = self.new
    shoe_1.name = "Duramo 9 Shoes"
    shoe_1.price = "$65"
    shoe_1.availability = true 
    shoe_1.url = "https://www.adidas.com/us/women-running-shoes"
    
    shoe_2 = self.new
    shoe_2.name = "Ultraboost"
    shoe_2.price = "$180"
    shoe_2.availability = true 
    shoe_2.url = "https://www.adidas.com/us/women-running-shoes"
    [shoe_1, shoe_2]
  end
  
end 