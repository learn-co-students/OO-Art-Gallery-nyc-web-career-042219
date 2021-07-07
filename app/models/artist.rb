# require 'pry'

class Artist

  attr_reader :name, :years_experience

  @@all = []
  @@total_experience = 0
  @@most_prolific

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
    @@total_experience += years_experience
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    #which paintings belong to me / are out being exhibited
    #which gallery is each painting in?
    my_paintings = self.paintings
    my_paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    @@total_experience
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.length / artist.years_experience
    end
  end

  def create_painting(title,price,gallery)
    Painting.new(title,price,self,gallery)
  end

end
