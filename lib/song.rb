class Song

  attr_accessor :name, :artist, :genre
  @@artists = []
  @@genres = []
  @@count = 0 
  def initialize (name, artist, genre)
    @name =name
    @artist =artist
    @genre = genre 
    @@artists << artist
    @@genres << genre
    @@count+= 1
  end 

  def self.count
    @@count
  end 

  def self.artists
    @@artists.uniq
  end 

  def self.genres
    @@genres.uniq
  end 

  def artist_count
    @@artists.count 
  end 

  def self.genre_count
    @@genres.group_by(&:itself).transform_values(&:size)
  end 

  def self.artist_count
    @@artists.group_by(&:itself).transform_values(&:size)
  end

end 