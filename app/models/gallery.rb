class Gallery

  attr_reader :name, :city

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select do |ptg|
      ptg.gallery == self
    end
  end

  def artists
    paintings.map do |ptg|
      ptg.artist
    end
  end

  def artists_names
    artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    paintings.max_by do |ptg|
      ptg.price
    end
  end

end
