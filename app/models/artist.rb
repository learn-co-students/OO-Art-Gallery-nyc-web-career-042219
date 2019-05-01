class Artist
  @@all = []

  def self.all
    @@all
  end

  def self.total_experience
    all.map(&:years_experience).sum
  end

  def self.most_prolific
    all.max_by { |artist| artist.paintings.length / artist.years_experience.to_f }
  end

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    paintings.map(&:gallery)
  end

  def cities
    galleries.map(&:city)
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
