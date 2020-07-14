require 'pry'

class Song
    attr_reader :name, :genre, :artist
    @@all = []

    def initialize(name, artist, genre)
        @@all << self
        @name = name
        @artist = artist
        @genre = genre
        # binding.pry
    end

    def self.all
        @@all
    end

    def artist=(name)
        @artist = name
    end
end