class Artist
  attr_reader :artist, :album

  def initialize(release)
    @artist = release[:artist]
    @album = release[:album]
  end
end
