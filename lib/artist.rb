class Artist
  attr_reader :artist, :albums

  def initialize(release)
    @name = release[:name]
    @albums = []
  end
  # end

  # def Artist.all_artists
  #   @@all_artists
  # end

  # def all_albums
  #   @@all_albums
  # end
end

# my_album = Album.new('name of album')
# my_artist = Artist.new(:artist => 'Paul McCartney')

# my_artist.add_album(my_album)
