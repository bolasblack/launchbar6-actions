#!/usr/bin/env ruby

require 'json'

theQuery = ARGV.first.split(' ')
shellQuery = theQuery.map{ |query| Regexp.quote query }.join('.*')
processes = `ps -A -o comm | grep \.app\/ | uniq | grep -i [^/]*#{shellQuery}[^/]*$`.split("\n")
items = processes.map do |processPath|
    processNameMatch = processPath.match(/\/([^\/]+)\.app\//)
    next if processNameMatch.nil?
    
    iconValue = processPath.match(/.+?\.app\//)
    next if iconValue.nil?
    
    # Normal App all have icon
    expactedIconPath = "#{iconValue[0]}Contents/Resources/*.icns"
    next if Dir.glob(expactedIconPath).empty?
    
    {
      title: processNameMatch[1],
      icon: iconValue[0],
      action: 'active_application.sh',
      actionArgument: iconValue[0]
    }
end.compact.uniq do |item|
  item[:title] + item[:icon]
end

puts items.to_json
# puts "ps -A -o comm | grep \.app\/ | uniq | grep -i [^/]*#{shellQuery}[^/]*$"
