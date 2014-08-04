require 'rspec'
require 'artist'
require 'album'

describe Artist do
  it 'initializes with a hash containing an artist(key) and empty array for albums' do
    new_artist = Artist.new({:artist => 'tears for fears', :album => []})
    expect(new_artist).to be_an_instance_of Artist
  end

  it 'adds the artist name' do
    new_artist = Artist.new({:artist => 'tears for fears'})
    expect(new_artist.name).to eq 'tears for fears'
  end
end

describe Album do
  it 'initalizes with a title and an empty array to push the title into' do
    new_album = Album.new('songs from the big chair')
    expect(new_album).to be_an_instance_of Album
  end

  it 'reads album title back' do
    new_album = Album.new('songs from the big chair')
    expect(new_album.title).to eq 'songs from the big chair'
  end

  describe '#save' do
    it 'adds the album title to the empty array' do
      new_album = Album.new('songs from the big chair')
      new_album.save
      expect(Album.all).to eq [new_album]
    end
  end
  # it 'adds the album titles to correct artist object' do
  #   new_artist = Artist.new({:artist => 'tears for fears'})
  #   new_album = Album.new('songs from the big chair')
  #   expect(new_artist.add_album).to eq ['songs from the big chair']
end
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


