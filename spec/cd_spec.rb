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

  it 'lists all the artists out in an array' do
    new_artist = Artist.new({:artist => 'tears for fears'})
    new_artist1 = Artist.new({:artist => 'tom petty'})
    new_artist.save
    new_artist1.save
    expect(Artist.all).to eq [new_artist, new_artist1]
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

end


