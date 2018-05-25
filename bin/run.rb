require 'pry'
require_relative '../lib/avenger.rb'
require_relative '../lib/appearance.rb'
require_relative '../lib/movie.rb'

thor = Avenger.new("Thor", "God of Thunder")
iron_man = Avenger.new("Tony Stark", "Has super suit and brains")
hulk = Avenger.new("Bruce Banner", "Super strong and angry")

thor_movie = Movie.new("Thor", 2006)
avengers = Movie.new("Avengers", 2008)
the_incredible_hulk = Movie.new("The Incredible Hulk", 2003)


thor.makes_appearance_in(avengers)
iron_man.makes_appearance_in(avengers)
hulk.makes_appearance_in(avengers)
hulk.makes_appearance_in(the_incredible_hulk)
thor.makes_appearance_in(thor_movie)


Pry.start
