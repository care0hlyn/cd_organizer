require './lib/artist'
require './lib/album'
require 'pry'

@selected_artist

def main_menu

  puts "Press '1' to add new release."
  puts "Press '2' to gain access to your artists."
  puts "Press '3' to gain access to your albums."
  puts "Press 'x' to exit."

  user_decision = gets.chomp

  if user_decision == '1'
    new_release
  elsif user_decision == '2'
    artist_menu
  elsif user_decision == '3'
    album_menu
  elsif user_decision == 'x'
    puts "Goodbye!"
    exit
  else
    main_menu
  end
end

def new_release
  puts "Please enter an artist's name."
  artist_name = gets.chomp
  new_artist = Artist.new({:name => artist_name})
  new_artist.save
  puts "Please enter #{new_artist.name}'s album title."
  input_album = gets.chomp
  new_album = Album.new(input_album)
  new_album.save
  new_artist.add_album(new_album)
  puts "You've added #{new_artist.name}: #{new_album.title} to your organizer!"
  puts "Returning to the main_menu...\n\n"
  main_menu
end

def artist_menu
  puts "Press 's' to search for an artist and their albums."
  puts "Press 'l' to list all artists."
  puts "Press any other key to return to the main menu."

  user_decision = gets.chomp

  if user_decision == 's'
    search_artists
  elsif user_decision == 'l'
    Artist.all.each_with_index {|artist, index| puts "#{index+1}. #{artist.name}" }
    artist_menu
  else
    puts "Returning to main menu...\n\n"
    main_menu
  end
end

def search_artists
  puts "Please enter the artist's name."

  artist_name = gets.chomp
  @selected_artist = Artist.all.select { |artist| artist.name == artist_name }.first
  puts "\n"
  puts @selected_artist.name
  Artist.albums.each_with_index { |album, index| puts "#{index+1}.#{album.title}" }
  puts "\n"
  puts "Would you like to add an album to this artist's repertoire? y/n?"
  user_decision = gets.chomp
  if user_decision == 'y'
    add_new_title
  else
    puts "No worries!"
    main_menu
  end
end

def add_new_title
  puts "Enter new album title here."
  new_album_title = gets.chomp
  new_album = Album.new(new_album_title)
  new_album.save
  @selected_artist.add_album(new_album)
  puts "#{new_album.title} has been added successfully to #{@selected_artist.name}'s repertoire."
  puts "\n\n"
  artist_menu
end

def album_menu
  puts "Press 's' to search for an album and its artist."
  puts "Press 'l' to list all albums"
  puts "Press any other key to return to the main menu."

  user_decision = gets.chomp

  if user_decision == 's'
    search_albums
  elsif user_decision == 'l'
    Album.all.each_with_index { |album, index| puts "#{index+1}. #{album.title}" }
    album_menu
  else
    puts "Returning to main menu... \n\n"
    main_menu
  end

end

def search_albums
  puts "Please enter the album name."

  album_name = gets.chomp

  Album.all.each do |album|
    if album.title == album_name
      puts "#{album_name} exists in your organizer."
      album_menu
    else
      puts "#{album_name} does not exist."
      main_menu
    end
  end
end



main_menu
