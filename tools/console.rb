require_relative '../config/environment.rb'

serra = Artist.new("Richard Serra", 20)
judd = Artist.new("Donald Judd", 19)
sandbeck = Artist.new("Fred Sandbek", 30)
rothko = Artist.new("Mark Rothko", 15)

gagosian = Gallery.new("Gagosian", "New York City")
pace = Gallery.new("Pace", "New York City")
zwirner = Gallery.new("David Zwirner", "London")

torqued = Painting.new("Torqued Ellipse", 400000, serra, gagosian)
chapel = Painting.new("Rothko Chapel", 80000, rothko, pace)
redblue = Painting.new("SFMoMA", 7000, rothko, gagosian)
stack = Painting.new("Stack", 10000, judd, zwirner)


binding.pry

puts "Bob Ross rules."
