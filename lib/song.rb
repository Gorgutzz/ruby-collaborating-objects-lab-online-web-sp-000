class Song
  attr_accessor :artist, :name


  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    artost = filename.split(" - ")[-]
    song = self.new(song)
    song.artist_name = artist
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


end
