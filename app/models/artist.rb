class Artist

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    #array of all artist's paintings
    Painting.all.select { |painting| painting.artist == self}
  end

  def galleries
    #array of all galleries, artist's paintings in
    paintings.map { |painting| painting.gallery }
  end

  def cities
    galleries.map { |painting| painting.city }.unique
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.total_experience
    self.all.map { |artist| artist.years_experience }.sum.to_i
  end

  def self.most_prolific
    #eneumerate through the full artist arr with max_by
    #returning the max artist instance according to productivity formula (to float, else returns 0)
    #rothko 0.133
    self.all.max_by { |artist| artist.paintings.length/artist.years_experience.to_f }
  end

end
