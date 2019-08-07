class RunningShoes::Shoes
  attr_accessor :name, :price, :availability, :url
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
    doc = Nokogiri::HTML(open("https://www.altrarunning.com/shop/women"))
    name = doc.search("span.product-block-name-wrapper").children.map {|name| name.text}.compact
    
     
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