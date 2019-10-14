require 'pry'

class Song

    attr_accessor :name, :artist


    @@all= []
    @@song_count = []

    def initialize(name)
        @name= name
        @@all << self
        @@song_count
    end

    def self.song_count
        @@song_count += 1
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist
        self.artist.name
        end
    end
end