require 'pry'
class Song
    # by using :artist, i'm linking artist and song classes
    attr_accessor :name, :artist
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        artist.name if artist
        # binding.pry
    end
    

end


# hello = Song.new("Hello")
# hello.artist = adele

# binding.pry