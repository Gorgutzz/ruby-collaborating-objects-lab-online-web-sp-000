class Artist
  attr_accessor :name
  @@total_songs = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@total_songs += 1
  end



end
