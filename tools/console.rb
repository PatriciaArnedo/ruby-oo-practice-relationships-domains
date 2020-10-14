require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


batman = Character.new("Batman")
baby_yoda = Character.new("Baby Yoda")
satan = Character.new("Satan")
bush = Character.new("Bush")


jim = Actor.new("Jim")
tom = Actor.new("Tom")
luke = Actor.new("Luke")
carly = Actor.new("Carly")
luke= Actor.new("Luke")



star_wars = Movie.new("Star Wars")
star_trek = Movie.new("Star trek")
war_movie = Movie.new("War Movie")
romcom = Movie.new("RomCom")

star_trek_show = Show.new("Star trek")
naruto = Show.new("Naruto")
lucifer = Show.new("Lucifer")
star_wars_show = Show.new("Star Wars")


superman = Character.new("Superman")
role_1 = superman.new_role("the hero", jim, war_movie)

puts "expecting one role"
puts superman.roles
puts "\n"

puts superman.characters
puts "\n"

puts "one character"
Character.most_appearances
puts "\n"
role_2 = star_wars.new_role("bad guy", satan, tom)

puts"one role"
puts star_wars.roles
puts "\n"