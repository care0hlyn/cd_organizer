class Artist
  attr_reader :artist, :album
    @@all_artists = []
    @@all_albums = []

  def initialize(release)
    @artist = release[:artist]
    @album = release[:album]
  end

  def all_artists
    @@all_artists
  end

  def all_albums
    @@all_albums
  end
end
