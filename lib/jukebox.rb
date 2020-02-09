require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# puts "Enter your name:"
# users_name = gets.strip
# puts say_hello(users_name)

# def say_hello(name)
#   "Hi #{name}!"
# end

puts "hello"

def run(songs)
  $stdout.puts("Please enter a command:")
  user_input = gets
  #binding.pry
  if user_input == "exit\n"
    exit_jukebox
  end
  if user_input == "help\n"
    help
  end
  if user_input == "play\n"
    play(songs)
  end
  if user_input == "list\n"
    list(songs)
  end
end

def help
  $stdout.puts(/I accept the following commands:/)
  $stdout.puts(/- help : displays this help message/)
  $stdout.puts(/- list : displays a list of songs you can play/)
  $stdout.puts(/- play : lets you choose a song to play/)
  $stdout.puts(/- exit : exits this program/)
end

def list(songs)
  songs.each_with_index do |item, index|
    $stdout.puts("#{index + 1}. #{item}")
  end
end

def play(songs)
  $stdout.puts(/Please enter a song name or number:/)
  user_input = gets
  result = false
  songs.each_with_index do |item, index|
    if item == user_input
      result = true
      $stdout.puts("/Playing #{item}/")
    end
    if (index + 1).to_s == user_input
      result = true
      $stdout.puts("/Playing #{item}/")
    end
  end
  if result == false
    $stdout.puts(/Invalid input, please try again/)
  end
end

def exit_jukebox
  $stdout.puts('Goodbye')
end