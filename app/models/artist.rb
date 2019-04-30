class Artist
  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}
  end

  def cities
    self.paintings.map {|painting| painting.gallery.city}.uniq
  end

  def self.total_experience
    Artist.all.map {|artist| artist.years_experience}.reduce(:+)
  end

  def self.most_prolific
    Artist.all.max_by {|artist| artist.paintings.length.to_f / artist.years_experience.to_f}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end
end
