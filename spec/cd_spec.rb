require 'rspec'
require 'artist'
require 'album'

describe Artist do
  it 'initializes with a hash containing an artist(key) and empty array for albums' do
    new_cd = Artist.new({:artist => 'tears for fears', :album => []})
    expect(new_cd).to be_an_instance_of Artist
  end

  it 'adds the artist name' do
    new_cd = Artist.new({:artist => 'tears for fears'})
    expect(new_cd.artist).to eq 'tears for fears'
  end

  # it 'adds the album titles' do
  #   new_cd = Artist.new({:album => 'songs from the big chair'})
  #   expect(new_cd.album).to eq 'songs from the big chair'
  # end

  # it 'starts with an empty array' do
  #   new_cd = Artist.new({:artist => 'tears for fears'})
  #   expect(new_cd.all_artists).to eq []
  # end

  # it 'starts with an empty array' do
  #   new_cd = Artist.new({:album => 'songs from the big chair'})
  #   expect(new_cd.all_albums).to eq []
  # end

  # it 'lists out all the artists' do
  #   new_cd = Artist.new({:artist => 'tears for fears'})
  #   new_cd1 = Artist.new({:artist => 'peter frampton'})
  #   new_cd2 = Artist.new({:artist => 'tom petty'})
  #   expect(new_cd.all_artists).to eq ['tears for fears', 'peter frampton', 'tom petty']
  # end

end
