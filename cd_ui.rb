require './lib/artist'

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
  puts "Please enter an artist's name"
end

main_menu
