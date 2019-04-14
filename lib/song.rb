class Song
  attr_accessor :artist, :name


  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    song = self.new(song)
    song.artist_name = artist
    song
  end



end
