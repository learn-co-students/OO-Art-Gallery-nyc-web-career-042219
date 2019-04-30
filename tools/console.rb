require_relative '../config/environment.rb'


leo = Artist.new("Leo Da Vinci", 50)
mike = Artist.new("Michaelangelo", 70)

moma = Gallery.new("MoMa", "NYC")
met = Gallery.new("The Met", "NY, NY")

leo_at_met = Painting.new("Helicopter", 500, leo, met)
mike_at_moma = Painting.new("Madonna", 1000, mike, moma)
leo_at_moma = Painting.new("Painting", 450, leo, moma)

binding.pry

puts "Bob Ross rules."
