class Gallery
  @@all = []

  def self.all
    @@all
  end

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
  end

  def paintings
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists
    paintings.map(&:artist)
  end

  def artist_names
    artists.map(&:name)
  end

  def most_expensive_painting
    paintings.max_by(&:price)
  end

end
