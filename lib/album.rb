class Album
  attr_reader :title
  @@albums = []

  def initialize(title)
    @title = title
  end

  def add_artist(artist)
    @artist = artist
  end

  def Album.all
    @@albums
  end

  def save
    @@albums << self
  end

end


# "What is the artist name?"
# artist = gets.chomp
# new_artist = Artist.new(artist)
# "What is the name of the album?"
# album = gets.chomp
# new_album = Album.new(album)
# new_artist.add_album(new_album)
# new_album.add_artist(new_artist)


# album.artist
# #single artist object
# artist.albums
# #array of albums
