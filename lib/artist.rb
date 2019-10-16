class Artist 
  attr_accessor :name 
  
  @@songs = 0
  
  def initialize(name)
    @name = name
  end
  
  def add_song(song) 
    song.artist = self
  end
    
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end
  
  
end