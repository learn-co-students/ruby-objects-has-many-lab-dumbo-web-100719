require 'pry'
class Artist
    attr_accessor :name, :songs
    
    def initialize(name)
        @name = name
    end

    def songs
        # here i'm calling Song Class and getting its .all method that 
        # returns all the songs in the class, and I assign the artist to the song instance (self) 
        # since I have attr_accesor :artist in the Song Class
        Song.all.select do |song|
            song.artist = self
        end
        
    end

    def add_song(song)
        # song is an instance of Song, when we pass it we can access it's attributes (title)
        # we can then assign the artist= self, so artist= the artist instance (the whole object instance)
        song.artist = self
        
    end
    
    def add_song_by_name(title)
        song = Song.new(title)
        song.artist = self
    end

    def self.song_count
        Song.all.count
    end

end

# adele = Artist.new("Adele")
# n= adele.name

# hello = Song.new("hello")
# adele.add_song(hello)
# i = adele.songs.include?(hello)
# a= hello.artist.include?(adele)
# binding.pry
