class Artist
  attr_reader :artist

  def initialize(release)
    @artist = release[:artist]
    @album = release[:album]
  end
end
