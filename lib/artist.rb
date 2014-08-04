class Artist
  attr_reader :name, :artists
    @@artists = []

  def initialize(attributes)
    @name = attributes[:name]
  end

  def Artist.all
    @@artists
  end

  def save
    @@artists << self
  end

end


