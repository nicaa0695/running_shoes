class RunningShoes::Shoes
  attr_accessor :name, :price, :availability, :description
  def self.all 
    # Scrape Altra and then return the shoes based on that data 
    self.scrape_shoes
  end
  
  def self.scrape_shoes
    shoes = []
    shoes << self.scrape_altra
    #got to adidas, finf the product
    #extract the properties
    #instantiate a shoe
    
    shoes
  end 
  
  def self.scrape_altra
    doc = Nokogiri::HTML(open("https://www.altrarunning.com/shop/women/womens-escalante-2-alw1933g?variationId=220#hero=0"))
    name = name = doc.search("#product-info > h1").text
    #price = doc.search
    availability = true 
    description = doc.search("#container-4 > div.swatches-product-details-container > section > div.pdp-details.product-details-section > div > div").text.strip
    binding.pry 
    
    
    end
  
end 

  #     shoe_1 = self.new
  #     shoe_1.name = "Duramo 9 Shoes"
  #     shoe_1.price = "$65"
  #     shoe_1.availability = true 
  #     shoe_1.url = "https://www.adidas.com/us/women-running-shoes"
      
  #     shoe_2 = self.new
  #     shoe_2.name = "Ultraboost"
  #     shoe_2.price = "$180"
  #     shoe_2.availability = true 
  #     shoe_2.url = "https://www.adidas.com/us/women-running-shoes"
