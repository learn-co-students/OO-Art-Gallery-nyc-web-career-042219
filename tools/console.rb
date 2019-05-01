require_relative '../config/environment.rb'

picasso = Artist.new('Picasso', 50)
leonardo = Artist.new('Leonardo', 2)

met = Gallery.new('The Met', 'NYC')

mona_lisa = Painting.new('mona lisa', 1_000_000, picasso, met)
other_painting = Painting.new('other painting', 1, leonardo, met)

# p picasso.paintings
# p picasso.galleries
# p picasso.cities

# p Artist.most_prolific
# p Artist.total_experience

# p Painting.total_price

# p met.paintings
# p met.artists
# p met.artist_names
# p met.most_expensive_painting

# binding.pry

puts "Bob Ross rules."
