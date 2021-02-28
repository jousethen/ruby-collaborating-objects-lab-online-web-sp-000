class Song 
  attr_accessor :name, :genre
  @@all = []
  @artist
  
  def initialize(title)
    @name = title
    @@all << self
  end
  
  def artist=(name)
    @artist = name
  end
  
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end
  
  def artist
    @artist
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if @artist
      return @artist.name
    else
      return nil 
    end
  end
  
  def self.new_by_filename(filename)
    song = filename.split(" - ")
    song[1].delete_suffix!(".mp3")
    new_song = Song.new(song[1])
    @@all << new_song
    new_song.artist = Artist.find_or_create_by_name(new_song[0])
    
    return new_song
  end
  
end