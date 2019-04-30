class Artist

  attr_reader :name, :years_experience

  @@all = []

  #instance methods

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
  	Painting.all.select {|painting| painting.artist == self}
  end

  def creat_painting(title, price, gallery)
  	Painting.new(title, price, self, gallery)
  end

  #class method

  def self.all 
  	@@all 
  end

  def self.total_experience
  	total = 0
  	self.all.each {|artist| total += artist.years_experience}
  	total
  end

  def self.most_prolific
  	self.all.sort do |artist| 
  		(Painting.all.select {|painting| painting.artist == artist}.length/artist.years_experience).to_f
	end.last
  end

end
