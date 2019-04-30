class Painting

  attr_reader :title, :price

  @@all = []

  def self.all
    @@all
  end

  def self.total_price
    self.all.map{ |painting| painting.price }.sum.to_i
  end

  attr_accessor :artist, :gallery, :price
  attr_reader :title

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

end
