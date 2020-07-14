require 'pry'

class Artist
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(n_name, new_genre)
    Song.new(n_name, self, new_genre)
  end

  def songs
    # binding.pry
    Song.all.select { |song| song.artist == self }
  end

  def genres
    songs.map { |song| song.genre }
  end    
end
