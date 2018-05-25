class Appearance
  attr_accessor :avenger, :movie
  @@all = []

  def initialize(avenger234, movie234)
    @avenger = avenger234
    @movie = movie234
    @@all << self
  end

  def self.all
    @@all
  end
end
