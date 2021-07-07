require_relative '../config/environment.rb'


picasso = Artist.new("Picasso", 20)
frida = Artist.new("Frida", 10)

moma = Gallery.new("Moma", "NYC")
the_met = Gallery.new("The Met", "NY")
history = Gallery.new("Natural History Museum", "DC")

starry_night = Painting.new("Starry Night", 10000, frida, moma)
big_bang = Painting.new("Big Bang", 19, picasso, history)
lame = Painting.new("Lame", 2, frida, moma)






binding.pry

puts "Bob Ross rules."
