class Gallery

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists
    self.paintings.map { |painting| painting.artist }
  end

  def artist_names
    self.artists.map { |artist| artist.name }
  end

  def most_expensive_painting
    #sort all paintings at the gallery by price
    #take the highest/last index
    self.paintings.sort { |painting| painting.price }[-1]
  end

end
