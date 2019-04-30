require_relative '../config/environment.rb'



artist1 = Artist.new("Artist1", 10)
artist2 = Artist.new("Artist2", 2)

gallery1 = Gallery.new("Gallery1", "Queens")
gallery2 = Gallery.new("Gallery2", "Brooklyn")
gallery3 = Gallery.new("Gallery3", "Queens")

artist1.create_painting("Painting1", 100, gallery1)
artist1.create_painting("Painting2", 100, gallery1)
artist2.create_painting("Painting3", 200, gallery2)
artist2.create_painting("Painting4", 5, gallery2)
artist2.create_painting("Painting5", 150, gallery3)

binding.pry

puts "Bob Ross rules."
