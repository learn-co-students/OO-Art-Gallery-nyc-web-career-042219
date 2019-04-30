class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
  Painting.all.select do |painting|
    painting.gallery == self
    end
  end

  def artists
    self.paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    self.artists.map do |painting|
      painting.name
    end.uniq
  end

  def most_expensive_painting
    Painting.all.max_by do |painting|
      painting.price
    end
  end

  def invested
  end



  def self.all
    @@all
  end

end
