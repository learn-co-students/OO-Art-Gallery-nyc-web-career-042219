require_relative '../config/environment.rb'

frida = Artist.new("Frida", 20)
mike = Artist.new("Michaelangelo", 1500)
squidward = Artist.new("Squidward", 1)

zwirner = Gallery.new("zwirner", "NYC")
the_met = Gallery.new("the_met", "New York, New York" )
moma = Gallery.new("moma", "Charleston")

mona_lisa = Painting.new("Mona Lisa", 7000000000, frida, zwirner)
starry_night = Painting.new("Starry Night", 100, frida, moma)
bold_and_brash = Painting.new("Bold and Brash", 7, squidward, zwirner)

#frida.create_painting("new painting", 500, "x gallery")

zwirner.most_expensive_painting

binding.pry

puts "Bob Ross rules."
