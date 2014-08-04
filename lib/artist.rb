class Artist
  attr_reader :name, :artists
    @@artists = []
    @@albums = []

  def initialize(attributes)
    @name = attributes[:name]
    @@albums
  end

  def Artist.all
    @@artists.sort_by! { |artist| artist.name.capitalize }
  end

  def Artist.albums
    @@albums
  end

  def save
    @@artists << self
  end

  def add_album(album)
    @@albums << album
  end

end


