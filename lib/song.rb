class Song
@@all = []
attr_reader :name
attr_accessor :artist #each song belongs to the artist that wrote it

def initialize(name)
    @name = name
   
    @@all << self
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
