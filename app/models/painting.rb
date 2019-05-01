class Painting
  @@all = []

  def self.all
    @@all
  end

  def self.total_price
    all.map(&:price).sum
  end

  attr_reader :title, :price, :artist, :gallery

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

end
