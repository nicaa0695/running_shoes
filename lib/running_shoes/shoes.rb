class RunningShoes::Shoes
  attr_accessor :name, :price, :availability, :description
  def self.all 
    # Scrape Altra and then return the shoes based on that data 
    self.scrape_shoes
  end
  
  def self.scrape_shoes
    shoes = []
    shoes << self.scrape_altra
    shoes << self.scrape_famous
    shoes << self.scrape_puma
    shoes << self.scrape_armour
    shoes << self.scrape_balance
    shoes << self.scrape_asics
    shoes
  end 
  
  def self.scrape_altra
    doc = Nokogiri::HTML(open("https://www.famousfootwear.com/en-US/Product/95454-1039435/adidas/Blueprt/Womens+Cloudfoam+QT+Racer+Sneaker.aspx"))
    
    shoe = self.new
    shoe.name = doc.search("#ctl00_cphPageMain_BrandAndPrice1_lblDisplayName").text
    shoe.price = doc.search("#ctl00_cphPageMain_BrandAndPrice1_ProductPrice").text.gsub("\r","").gsub("\n","").gsub(/\s+/,"")
    shoe.availability = "In stock!"
    shoe.description = doc.search("#ProductDescription").text.gsub("\r","").gsub("\n","").strip
    shoe 
    end
    
    def self.scrape_famous
      doc = Nokogiri::HTML(open("https://www.famousfootwear.com/en-US/Product/93921-1046863/Nike/Black_White/Womens+Acalme+Sneaker.aspx"))
      
      shoe = self.new 
      shoe.name = doc.search("#ctl00_cphPageMain_BrandAndPrice1_lblDisplayName").text
      shoe.price = doc.search("#ctl00_cphPageMain_BrandAndPrice1_ProductPrice").text.gsub("\r","").gsub("\n","").gsub(/\s+/,"")
      shoe.availability = "In stock!"
      shoe.description = doc.search("#ProductDescription").text.gsub("\r","").gsub("\n","").strip
      shoe 
    end
    
    def self.scrape_puma 
      doc = Nokogiri::HTML(open("https://www.famousfootwear.com/en-US/Product/95275-1047154/Puma/Black_White/Womens+Weave+Running+Shoe.aspx"))
      
      shoe = self.new 
      shoe.name = doc.search("#ctl00_cphPageMain_BrandAndPrice1_lblDisplayName").text
      shoe.price = doc.search("#ctl00_cphPageMain_BrandAndPrice1_ProductPrice").text.gsub("\r","").gsub("\n","").gsub(/\s+/,"")
      shoe.availability = "In stock!"
      shoe.description = doc.search("#ProductDescription").text.gsub("\r","").gsub("\n","").strip
      shoe 
    end
    
    def self.scrape_armour
      doc = Nokogiri::HTML(open("https://www.famousfootwear.com/en-US/Product/94957-1047132/Under+Armour/Black_Black/Womens+Charged+Impulse+Running+Shoe.aspx"))
      
      shoe = self.new 
      shoe.name = doc.search("#ctl00_cphPageMain_BrandAndPrice1_lblDisplayName").text
      shoe.price = doc.search("#ctl00_cphPageMain_BrandAndPrice1_ProductPrice").text.gsub("\r","").gsub("\n","").gsub(/\s+/,"")
      shoe.availability = "In stock!"
      shoe.description = doc.search("#ProductDescription").text.gsub("\r","").gsub("\n","").strip
      shoe 
    end
      
    def self.scrape_balance 
      doc = Nokogiri::HTML(open("https://www.famousfootwear.com/en-US/Product/95366-1042457/New+Balance/Navy/Womens+Nergize+Sneaker.aspx"))
      
      shoe = self.new 
      shoe.name = doc.search("#ctl00_cphPageMain_BrandAndPrice1_lblDisplayName").text
      shoe.price = doc.search("#ctl00_cphPageMain_BrandAndPrice1_ProductPrice").text.gsub("\r","").gsub("\n","").gsub(/\s+/,"")
      shoe.availability = "In stock!"
      shoe.description = doc.search("#ProductDescription").text.gsub("\r","").gsub("\n","").strip
      shoe 
    end
    
    def self.scrape_asics 
      doc = Nokogiri::HTML(open("https://www.famousfootwear.com/en-US/Product/94475-1037179/ASICS/Black_Laser+Pink/Womens+GEL-Quantum+180+2+Running+Shoe.aspx"))
      
      shoe = self.new 
      shoe.name = doc.search("#ctl00_cphPageMain_BrandAndPrice1_lblDisplayName").text
      shoe.price = doc.search("#ctl00_cphPageMain_BrandAndPrice1_ProductPrice").text.gsub("\r","").gsub("\n","").gsub(/\s+/,"")
      shoe.availability = "In stock!"
      shoe.description = doc.search("#ProductDescription").text.gsub("\r","").gsub("\n","").strip
      shoe 
    end 
end 

