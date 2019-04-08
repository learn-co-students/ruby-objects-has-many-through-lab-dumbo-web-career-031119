require "pry"
class Genre

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    # the comments are levels of abstraction of the "do" block below
    ###################################
    # songs(&:artist)

    # songs.map { |song| song.artist}
    ####################################
    songs.map do |song|
      song.artist
    end
  end

end
