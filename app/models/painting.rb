# Joint table

class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []


  def initialize(title, price, artist, gallery)
      @artist = artist
      @gallery = gallery
      @title = title
      @price = price
      @@all << self
  end


  # Instance methods



  # Class methods

    def self.all
        @@all
    end

  def self.total_price
      total = 0
      all.each {|painting| total += painting.price}
      total
    end
  end
