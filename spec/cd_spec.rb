require 'rspec'
require 'artist'
require 'album'

describe Artist do
  it 'initializes with a hash containing an artist(key) and album' do
    new_cd = Artist.new({:artist => 'tears for fears', :album => 'songs from the big chair'})
    expect(new_cd).to be_an_instance_of Artist
  end

  it 'adds the artist name' do
    new_cd = Artist.new({:artist => 'tears for fears'})
    expect(new_cd.artist).to eq 'tears for fears'
  end

end
