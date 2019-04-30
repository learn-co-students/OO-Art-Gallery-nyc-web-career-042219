class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []
  @@total_price = 0

  def initialize(title, price, artist, gallery)
    @artist = artist
    @gallery = gallery
    @title = title
    @price = price
    @@all << self
    @@total_price += @price
  end

  def self.all
    @@all
  end

  def self.total_price
    @@total_price
  end

end
