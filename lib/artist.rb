
require 'pry'

class Artist
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
     end 

     def songs
        Song.all
        
     end 
     #now that you're in Artist, we want to create a method (songs)
     #that will show an array of all the songs
     #we already had that over in the Song class
     #we link the song class to this method by calling it with the method .all 
     #because it is a class method we call it by *Classname*.*classmethod*

     def add_song (song)
        @songs << song
        song.artist = self
     end 

     def add_song_by_name (song_name)
        song = Song.new(song_name)
        add_song(song)
     end

     def self.song_count
        Song.all.length
     end 



end
