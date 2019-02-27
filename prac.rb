
 
 my_songs = {
 "Go Go GO" => 'audio/Emerald-Park/01.mp3',
 "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
 }


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  choice = gets.strip
  if !my_songs.has_key?(choice)
    puts "Invalid Choice"
  else 
    puts "Playing #{choice}"
    puts my_songs[choice]
    system %{open #{my_songs[choice]}}
  end
end


play(my_songs)