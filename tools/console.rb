require_relative '../config/environment.rb'


# Galery(name, city)
met_gal = Gallery.new("Met Gal", "New York")
moma = Gallery.new("Moma", "New York")

# Artist (name, years_experience)

mike = Artist.new("Mike M", 25)
greg = Artist.new("Greg", 10)

# Painting(title, price, artist, gallery)

mona_lisa = Painting.new("Mona Lisa", 5000, mike, moma)
lalala = Painting.new("Lalala", 3000, greg, met_gal)


binding.pry

puts "Bob Ross rules."
