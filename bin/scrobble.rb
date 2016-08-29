#!/usr/bin/env ruby

# Super simple last.fm scrobbler / now-playing-updater.
#
# Dependencies: $ gem install rockstar
#
# Uses a config file at $HOME/.config/lastfm.yml to store an API key, shared
# secret, and session key. Run `scrobble.rb setup` to setup this config file.
#
# Warning: this script does no error checking whatsoever at this time!

setup = (ARGV.first == 'setup')

if !setup && ARGV.length != 4
  puts "Usage: scrobble.rb (scrobble|nowplaying|setup) <artist> <title> <seconds_ago>"
  exit
end

require 'rockstar'

CONFIG_PATH = "#{ENV['HOME']}/.config/lastfm.yml"

if setup
  puts "First, you need an API key and shared secret. Get them from http://last.fm/api."

  print "Your API key: "
  config = {}
  config['api_key'] = STDIN.gets.strip

  print "Your API shared secret: "
  config['api_secret'] = STDIN.gets.strip

  Rockstar.lastfm = config
  auth = Rockstar::Auth.new
  token = auth.token

  puts "Now go to the following URL to authorize this script, and press enter when done."
  puts "  http://www.last.fm/api/auth/?api_key=#{Rockstar.lastfm_api_key}&token=#{token}"
  STDIN.gets

  session = auth.session(token)
  config['session_key'] = session.key

  puts "Do you want to write the following information to #{CONFIG_PATH}?"
  puts "  api_key: #{config['api_key']}"
  puts "  api_secret: #{config['api_secret']}"
  puts "  session_key: #{config['session_key']}"
  puts
  print "[Y/n]? "
  answer = STDIN.gets.strip

  unless answer.downcase[0] == 'n'
    File.open(CONFIG_PATH, "w") do |f|
      f << config.to_yaml
    end
    puts "Done, you're all set!"
  else
    puts "Okay, aborting."
  end
else
  begin
    keys = YAML.load_file(CONFIG_PATH)
  rescue Errno::ENOENT
    puts "#{CONFIG_PATH} not found, try running `scrobble.rb setup`."
  end

  session_key = keys.delete('session_key')
  Rockstar.lastfm = keys

  type, artist, title, seconds_ago = ARGV

  case type
  when 'scrobble'
    Rockstar::Track.scrobble(
      session_key: session_key,
      track: title,
      artist: artist,
      time: Time.now - seconds_ago.to_i
    )
  when 'nowplaying'
    Rockstar::Track.updateNowPlaying(
      session_key: session_key,
      track: title,
      artist: artist,
      time: Time.now - seconds_ago.to_i
    )
  else
    puts "Invalid first argument '#{type}'. Should be 'scrobble' or 'nowplaying'."
  end
end

