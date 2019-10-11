
class Song
 
    attr_accessor :name, :artist

    @@all = [] #contains all the songs,
    #when you initialize a new song it will be pushed here
 

    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end 

    def self.all #class method will always have self.*something*
        @@all   #return the array with all the songs (basically a reader for super special @@all)
    end 

 
    #pause here. Look back on the goal of the songs method.
    #what does it want? It wants it defined under Artist not song so go to Artist to finish coding

    def artist_name
        if @artist
            @artist.name
        else 
            nil
        end 
    end 


end 