class Avenger
  attr_reader :name, :power
  @@all = []

  def initialize(name, power)
    @name = name
    @power = power
    @@all << self
  end

  def self.all
    @@all
  end

  def self.multiple_movies?
    array = []

    all.each do |avenger|
      if avenger.in_multiple_movies?
        array << avenger
      end
    end

    array
  end

  def in_multiple_movies?
    movies.count > 1
  end

  def makes_appearance_in(movie)
    Appearance.new(self, movie)
  end

  def movies
    character_movies = []
    Appearance.all.map do |appearance|
      if self == appearance.avenger
        character_movies << appearance.movie
      end
    end
    character_movies
  end

  def movie_titles
    movies.map do |movie|
      movie.title
    end
  end
end
