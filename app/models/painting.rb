class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def self.all
    @@all
  end

  def initialize(title, price, artist, gallery)
    @artist = artist
    @gallery = gallery
    @title = title
    @price = price
    @@all << self
  end

  def self.total_price
    self.all.reduce(0) do |sum, ptg|
      sum += ptg.price
    end
  end

end
