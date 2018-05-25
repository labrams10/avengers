class Movie
  @@all = []
  attr_reader :title, :year

  def initialize(title, year)
    @title = title
    @year = year
    @@all << self
  end

  def self.all
    @@all
  end

  def characters
    characters = []
    Appearance.all.each do |appearance|
      if self == appearance.movie
        characters << appearance.avenger
      end
    end
    characters
  end

  def character_names
    characters.collect do |character|
      character.name
    end
  end
end
