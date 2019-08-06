class RunningShoes::Shoes
  attr_accessor :name, :price, :availability, :url
  def self.all 
    # Scrape Adidas and then return the shoes based on that data 
    self.scrape_shoes
  end
  
  def self.scrape_shoes
    shoes = []
    shoes << self.scrape_adidas
    #got to adidas, finf the product
    #extract the properties
    #instantiate a shoe
    
    shoes
  end 
  
  def self.scrape_adidas
    doc = HTTParty.get("https://www.adidas.com/us/women-running-shoes")
    @parse_page ||= Nokogiri::HTML(doc)
     
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