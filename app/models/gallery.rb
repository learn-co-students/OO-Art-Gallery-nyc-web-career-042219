class Gallery

    @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end


  # Instance methods
  def paintings
      Painting.all.select {|painting| painting.gallery  == self }
  end

  def artists
      Painting.all.select {|artist| artist.gallery  == self }
  end

  def artist_names
     artists.map {|artist| artist.name}
  end

  def most_expensive_painting
      price = 0
      price_point = nil
      Painting.all.each do |painting|
          if painting.price > price
              price = painting.price
              price_point = painting
          end
      end
          price_point
      end

  # Class methods
  def self.all
      @@all
  end



end
