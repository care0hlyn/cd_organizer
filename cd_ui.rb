require './lib/artist'
require './lib/album'
require 'pry'

def main_menu

  puts "Press '1' to add new release."
  puts "Press '2' to list all artists."
  puts "Press '3' to list all albums."
  puts "Press 'x' to exit."

  user_decision = gets.chomp

  if user_decision == '1'
    new_release
  elsif user_decision == '2'
    all_artists
  elsif user_decision == '3'
    all_albums
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
  puts "You've added #{new_artist.name}: #{new_album.title} to your organizer!"
  puts "Returning to the main_menu...\n\n"
  main_menu
end

def all_artists
  Artist.all.each {|artist| puts artist.name }
end


main_menu
