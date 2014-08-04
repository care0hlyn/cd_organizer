class Artist
  attr_reader :name, :artists
    @@artists = []

  def initialize(name)
    @name = name[:artist]
  end

  def Artist.all
    @@artists
  end

  def save
    @@artists << self
  end


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
