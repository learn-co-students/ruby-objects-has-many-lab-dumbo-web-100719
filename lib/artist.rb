class Artist
    @@all = [ ]
    

    attr_accessor :name 
    
    def initialize (name)
        @name = name
        @@all << self
        
        
    end

    def self.all
        @@all
    end
    def add_song(song)
        song.artist = self
        
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
        

    end

    def self.song_count
        Song.all.count
    end
end
