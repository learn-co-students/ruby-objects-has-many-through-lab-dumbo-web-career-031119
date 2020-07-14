require 'pry'

class Genre
    attr_accessor :name, :song
    @@all = []
    def initialize(name)
        @name = name
        @song = song
        @@all << self
    end

    def self.all
        @@all
    end

    def artists
        songs.map{|song| song.artist}
    end

    def songs
        Song.all.select{|song| song.genre == self}
    end
end