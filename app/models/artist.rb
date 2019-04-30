class Artist

    @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

# Instance methods
    def paintings
        Painting.all.select {|painting| painting.artist  == self }
    end

    def galleries
        self.paintings.map {|paint| paint.gallery }
    end

    def cities
        self.galleries.map {|gallery| gallery.city}
    end

    def create_painting(title, price, gallary)
        new_painting = Painting.new(title, price, self, gallary)

    end


    def add_recipe_card(recipe, date, rating)
            new_rc = RecipeCard.new(self, recipe, rating)
            new_rc.date = date
    end

# Class methods

  def self.all
      @@all
  end

  def self.total_experience
      Artist.all.collect { |artist| artist.years_experience}.sum
  end

  def self.most_prolific
      Artist.all.max_by {|artist| artist.paintings.length.to_f/artist.years_experience.to_f}
  end


end
