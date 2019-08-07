class RunningShoes::Shoes
  attr_accessor :name, :price, :availability, :description
  def self.all 
    # Scrape Altra and then return the shoes based on that data 
    self.scrape_shoes
  end
  
  def self.scrape_shoes
    shoes = []
    shoes << self.scrape_altra
    shoes
  end 
  
  def self.scrape_altra
    doc = Nokogiri::HTML(open("https://www.famousfootwear.com/en-US/Product/95454-1039435/adidas/Blueprt/Womens+Cloudfoam+QT+Racer+Sneaker.aspx"))
    
    shoe = self.new
    shoe.name = doc.search("#ctl00_cphPageMain_BrandAndPrice1_lblDisplayName").text
    shoe.price = doc.search("#ctl00_cphPageMain_BrandAndPrice1_ProductPrice").text.gsub("\r","").gsub("\n","").strip
    shoe.availability = "In stock!"
    shoe.description = doc.search("#ProductDescription").text.gsub("\r","").gsub("\n","").strip
    shoe 
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
