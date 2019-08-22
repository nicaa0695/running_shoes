require_relative './scraper.rb'
class RunningShoes::Shoes
  attr_accessor :name, :price, :availability, :description, :url
  attr_reader :scraped
  
  def initialize
    @scraped = false
  end
  
  def self.all 
    @@all ||= RunningShoes::Scraper.scrape_all
  end
end 

