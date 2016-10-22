#!/usr/bin/env ruby
#
# LaunchBar Action Script
#
require 'json'

items = [
  {
    title: 'Save current clipboard',
    icon: 'AppIcon.icns',
    action: 'send.rb',
    actionArgument: {
      type: 'currentClipboard'
    }.to_json
  }, {
    title: "Send text: #{ARGV.first}",
    icon: 'AppIcon.icns',
    action: 'send.rb',
    actionArgument: {
      type: 'sendText',
      text: 'hello'
    }.to_json
  }
]

puts items.to_json
