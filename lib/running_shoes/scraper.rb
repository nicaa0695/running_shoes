require_relative './shoes.rb'
class RunningShoes::Scraper
  
  def scrape
    doc = Nokogiri::HTML(open(self.url))
      self.description = doc.search("#ProductDescription").text.gsub("\r","").gsub("\n","").strip
      self
  end
  
  def self.scrape_all
    doc = Nokogiri::HTML(open("https://www.famousfootwear.com/en-US/Womens/_/_/Athletic+Shoes~Running+Shoes~Lifestyle/_/Products.aspx"))
    shoe_cards = doc.css('.productCellWrapper')
    shoe_cards.each do |shoe_card|
      shoe = self.new
      shoe.name = shoe_card.css('span.styleName.name').text
      shoe.price = shoe_card.css('span.variantPrice').text 
      shoe.availability = "In stock!"
      shoe.url = "https://www.famousfootwear.com/#{shoe_card.css('a').attr('href').text}"
    end
  end
  
end 

  
  