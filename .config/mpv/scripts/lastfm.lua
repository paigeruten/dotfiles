-- last.fm scrobbler for mpv
-- (forked from
--  https://github.com/l29ah/w3crapcli/blob/master/last.fm/mpv-lastfm.lua)
--
-- Usage:
-- put this file in ~/.config/mpv/scripts
-- put scrobble.rb (/bin/scrobble.rb in this repo) somewhere in your PATH
-- run `scrobble.rb setup` to give it your API key and authorization

local msg = require 'mp.msg'

function mkmetatable()
  local m = {}
  for i = 0, mp.get_property("metadata/list/count") - 1 do
    local p = "metadata/list/"..i.."/"
    m[mp.get_property(p.."key")] = mp.get_property(p.."value")
  end
  return m
end

function esc(s)
  return string.gsub(s, "'", "'\\''")
end

function scrobble()
  mp.resume_all()

  msg.info(string.format("Scrobbling %s - %s", artist, title))

  os.execute(
    string.format("scrobble.rb scrobble '%s' '%s' %d",
                  esc(artist),
                  esc(title),
                  scrobble_at))
end

function nowplaying()
  mp.resume_all()

  msg.info(string.format("Now Playing %s - %s", artist, title))

  os.execute(
    string.format("scrobble.rb nowplaying '%s' '%s' 0",
                  esc(artist),
                  esc(title)))
end

function enqueue()
  mp.resume_all()

  if artist and title then
    length = length or 90
    scrobble_at = math.min(240, length / 2)

    if tim then tim.kill(tim) end
    tim = mp.add_timeout(scrobble_at, scrobble)

    if tim2 then tim2.kill(tim2) end
    tim2 = mp.add_timeout(5, nowplaying)
  end
end

function on_metadata()
  local m = mkmetatable()

  length = mp.get_property("duration")

  -- last.fm doesn't allow scrobbling short tracks
  if length and tonumber(length) < 30 then
    return
  end

  artist = m["artist"] or m["ARTIST"]
  title = m["title"] or m["TITLE"]

  enqueue()
end

mp.register_event("metadata-update", on_metadata)
mp.register_event("file-loaded", on_metadata)

