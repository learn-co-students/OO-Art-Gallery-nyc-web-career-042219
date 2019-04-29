require_relative '../config/environment.rb'

a = Artist.new("Alice", 5)
b = Artist.new("Bob", 2)

c = Gallery.new("Chelsea Gallery", "New York")
d = Gallery.new("Donovan Gallery", "Seattle")

e = Painting.new("Excellent Painting", 1000, a, c)
f = Painting.new("Failure of a Painting", 10, b, d)
g = Painting.new("Great Painting", 500, a, d)

binding.pry

puts "Bob Ross rules."
