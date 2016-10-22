#!/usr/bin/env ruby

require 'json'

def osascript script
  system 'osascript', *script.split(/\n/).map { |line| ['-e', line] }.flatten
end

begin
  actionInfo = JSON.parse(ARGV.first)
rescue
  puts "Parse action argument failed"
  exit 1
end

case actionInfo["type"]
when "currentClipboard"
  osascript <<-END
tell application "Copied"
  save clipboard
end tell
  END
  system 'open', '-a', 'Copied'
when "sendText"
  osascript <<-END
tell application "Copied"
  save "#{actionInfo["text"]}"
end tell
  END
  system 'open', '-a', 'Copied'
end