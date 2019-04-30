require_relative '../config/environment.rb'


da_vinci = Artist.new("Davinci", 30)
will_blake = Artist.new("William Blake", 5)
van_gogh = Artist.new("Van Gogh", 25)

the_met = Gallery.new("The Met", "New York")
louvre = Gallery.new("The Louvre", "Paris")

red_dragon = Painting.new("Red Dragon", 300000, will_blake, the_met)
starry_night = Painting.new("Starry Night", 400000, van_gogh, louvre)
mona_lisa = Painting.new("Mona Lisa", 500000, da_vinci, louvre)

binding.pry

puts "Bob Ross rules."
