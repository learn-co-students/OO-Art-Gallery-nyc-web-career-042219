require_relative '../config/environment.rb'

#ARTISTS
squidward = Artist.new("Squidward Tentacles", 2)
vangogh = Artist.new("Vincent Van Gogh", 3)

#Galleries
met = Gallery.new("The Met", "NYC")
louvre = Gallery.new("The Louvre", "Paris")

#PAINTINGS
bab = Painting.new("Bold and Brash", 500, squidward, met)
genius = Painting.new("Misunderstood Genius", 200, squidward, met)
starry = Painting.new("Starry night", 100, vangogh, louvre)


binding.pry

puts "Bob Ross rules."
